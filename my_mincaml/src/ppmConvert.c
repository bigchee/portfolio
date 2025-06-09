#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <unistd.h>
#include <getopt.h>

// Usage : ./ppmConvert [-d(compare_file_path)?] [-o(output_file_path)?] input_file_path
// file pathで拡張子.ppmは必要
// オプション (どちらもオプショナル引数をとる. これを指定する場合は-dとpathの間に空白を開けない.)
// -d : diffをとる. デフォルトはraytracer/ppm/contest256.ppmとする. オプションで比較のためのfile pathをとる. これの出力は標準出力に.
// -o : P3に変換したppmファイルを保存する. デフォルトはp3output.ppmに保存.
// -s : 厳密な一致を要求する, そうでない場合は+-1差は数値計算の精度の差として許容

FILE *fp_in; 
FILE *fp_out;
FILE *fp_cmp;
int size_x,size_y,qmax;
int cmp_size_x,cmp_size_y,cmp_qmax;
int ppm_version, cmp_ppm_version;

#define HEADSIZE 3
#define LINE(y,x) (y * size_x + x + HEADSIZE)
#define PIXELSIZE 3

int enable_output = 0;
int enable_diff = 0;
int is_strict = 0;
char *inpath = NULL;
char *outpath = NULL;
char *cmppath = NULL;
int opt;

void scan_header(){
    if(fscanf(fp_in,"P%d\n",&ppm_version) < 1){
        fprintf(stderr,"input file doesn't have ppm header\n");
        exit(1);
    }

    // とりあえず比較用ファイルはP3形式を想定
    if(enable_diff){
        if(fscanf(fp_cmp,"P%d\n",&cmp_ppm_version) < 1 || cmp_ppm_version != 3){
            fprintf(stderr,"cmp file is expected to be in P3 format\n");
            exit(1);
        } 
    }


    if(fscanf(fp_in,"%d %d %d\n",&size_x,&size_y,&qmax) < 3){
        fprintf(stderr,"ppm header read error\n");
        exit(1);
    }

    if(enable_diff){
        if(fscanf(fp_cmp,"%d %d %d\n",&cmp_size_x,&cmp_size_y,&cmp_qmax) < 3 || size_x != cmp_size_x || size_y != cmp_size_y || qmax != cmp_qmax){
            fprintf(stderr,"input file and cmp file are expected to have same ppm format\n");
            exit(1);
        }
    }
}
void update_history(unsigned x[], unsigned y1[],unsigned y2[]){
    for(int i=0;i<PIXELSIZE;i++){
        x[i] = y1[i];
    }
    for(int i=0;i<PIXELSIZE;i++){
        x[i+PIXELSIZE] = y2[i];
    }
}
int is_same_color(unsigned x, unsigned y){
    int tmp = is_strict ? (x == y) : (x == y || x == y + 1 || x + 1 == y);
    return tmp;
}


int is_same(unsigned x[], unsigned y1[],unsigned y2[]){
    for(int i=0;i<PIXELSIZE;i++){
        if(x[i] != y1[i]){ return 0; }
    }
    for(int i=0;i<PIXELSIZE;i++){
        if(x[i+PIXELSIZE] != y2[i]){ return 0; }
    }
    return 1;
}


int main(int argc, char *argv[]){

    // オプションの処理
    while((opt = getopt(argc,argv,"d::o::s")) != -1){
        switch (opt){
        case 'd':
            enable_diff = 1;
            cmppath = optarg;
            // printf("%s\n",optarg);
            break;
        case 'o':
            enable_output = 1;
            outpath = optarg; 
            // printf("%s\n",optarg);
            break;
        case 's':
            is_strict = 1;
            break;
        default:
            fprintf(stderr,"error! \'%c\' \'%c\'\n", opt, optopt);
            return 1;
        }
    }

    // for (int i = optind; i < argc; i++) {
    // fprintf(stderr,"arg = %s\n", argv[i]);
    // }
    if(optind >= argc){
        fprintf(stderr,"input file path lacked\n");
    }
    inpath = argv[optind];

    if(cmppath == NULL){ cmppath = "../sim_utils/contest256_while.ppm"; } // raytracer/ppm/rv32_optoff_contest.ppm, raytracer/ppm/contest256.opt.ppm
    if(outpath == NULL){ outpath = "raytracer/ppm/p3output.ppm"; }
    fprintf(stderr,"cmppath = %s\n",cmppath);
    fprintf(stderr,"outpath = %s\n",outpath);
    fprintf(stderr,"enable_diff = %d\n",enable_diff);
    fprintf(stderr,"enable_output = %d\n",enable_output);


    // 入力用ファイル
    if((fp_in = fopen(inpath,"r")) < 0){
            perror("input file open error");
            exit(1);
    }
    // 出力用ファイル
    // 出力しないなら別にopenしてほしくない.
    if (enable_output){
        if((fp_out = fopen(outpath,"w")) < 0){
            perror("output file open error");
            exit(1);
        } 
    }

    // 比較用ファイル
    if(enable_diff){
        if((fp_cmp = fopen(cmppath,"r")) < 0){
            perror("cmp file open error");
            exit(1);
        }
    }

    scan_header();

    // 入力されたファイルがP6ならP3へ変換する
    // 入力がP3なのにoutputを指定したら出力はしないことに
    if(enable_output && ppm_version == 3){
        fprintf(stderr,"Input file is in P3 format, so there is no need to output\n");
        enable_output = 0;
    }

    // print ppm header
    if(enable_output) fprintf(fp_out,"P3\n%d %d %d\n",size_x,size_y,qmax);
    // fseek(fp_in, 16L, SEEK_SET);
    char tmp;
    unsigned rgb[3];
    unsigned cmp_rgb[3];
    unsigned history[6] = {qmax+1}; // 0-qmaxじゃなければいい
    int same_from = 0;

    int count_diffline = 0;

    // x, yが逆かもしれない.
    for(int y=0;y<size_y;y++){
        for(int x=0;x<size_x;x++){
            // scan pixel

            // read pixel from input file
            if(ppm_version == 6){
                for(int k=0;k<3;k++){
                if((tmp = getc(fp_in)) == EOF && ferror(fp_in) != 0 ){
                    perror("inputfile read char error");
                    exit(1);
                }
                rgb[k] = (uint8_t)tmp; //uint8_tとして解釈させないと-128 ~ 127になってしまう.
                }
            }else{
                if(fscanf(fp_in,"%u %u %u\n",&rgb[0],&rgb[1],&rgb[2]) < 3){
                perror("inputfile read char error");
                exit(1);
                }
            }
            
            //こっちもunsignedにするのが正しそう
            if(enable_output) fprintf(fp_out,"%u %u %u\n",rgb[0],rgb[1],rgb[2]); 

            if(!enable_diff) continue;

            // read pixel from cmp file
            if(fscanf(fp_cmp,"%u %u %u\n",&cmp_rgb[0],&cmp_rgb[1],&cmp_rgb[2]) < 3){
                perror("cmpfile read char error");
                exit(1);
            }
            // historyと比較
            if(is_same(history,rgb,cmp_rgb)){ continue; } // 同じだったら比較は延期

            // diffする
            if((!is_same_color(history[0],history[PIXELSIZE + 0])) || (!is_same_color(history[1],history[PIXELSIZE + 1]))  || (!is_same_color(history[2],history[PIXELSIZE + 2])) ){
                // pixelのマス表示がしたいなら変更できる. (y,x)とする? x,yというより行列としたほうがわかりやすい
                if(same_from >= HEADSIZE){ 
                    // 三つとも出力するとどの桁があっていて, どの桁がずれているのかを直感的に判断できない.
                    printf("line %05d-%05d : x (%03u,%03u,%03u) o (%03u,%03u,%03u)\n", same_from,LINE(y,x) - 1,history[0],history[1],history[2],history[3],history[4],history[5]);
                    count_diffline += LINE(y,x) - same_from; }
            }
            same_from = LINE(y,x); //次のhistoryに更新 
            update_history(history,rgb,cmp_rgb);
        }
    }

    if(enable_diff){
        // 最後のdiffする
        int y = size_y - 1;
        int x = size_x - 1;
        if(history[0] != history[PIXELSIZE + 0] || history[1] != history[PIXELSIZE + 1] || history[2] != history[PIXELSIZE + 2]){
            printf("line %05d-%05d : x (%03u,%03u,%03u) o (%03u,%03u,%03u)\n", same_from,LINE(y,x) - 1,history[0],history[1],history[2],history[3],history[4],history[5]);
            count_diffline += LINE(y,x) - same_from;
        }
        
        // 違ったlineの合計を出力
        if(count_diffline){
            fprintf(stderr,"count_diffline = %d\n",count_diffline);
        }else{
            fprintf(stderr,"NO DIFFERENCE DETECTED!!!!\n");
        }
    }

    // ファイルをちゃんと読み切ったか確認しておく
    int trail = 0;
    while(1){
        if((tmp = getc(fp_in)) == EOF){
            if(ferror(fp_in) == 0){
                if(trail) fprintf(stderr,"trail = %d\n",trail);
                break;
            }else{
                perror("read char error");
                exit(1);
            }
        }else{
            trail++;
            fprintf(stderr,"%d\n",tmp);
        }
    }
    fclose(fp_in);
    if(enable_output) fclose(fp_out);
    if(enable_diff) fclose(fp_cmp);
}