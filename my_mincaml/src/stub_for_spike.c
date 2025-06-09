#include <stdio.h>
#include <stdlib.h>
#include <math.h>

extern void min_caml_start(char *, char *);

/* "stderr" is a macro and cannot be referred to in libmincaml.S, so
   this "min_caml_stderr" is used (in place of "__iob+32") for better
   portability (under SPARC emulators, for example).  Thanks to Steven
   Shaw for reporting the problem and proposing this solution. */
FILE *min_caml_stderr;
static FILE *fp;
int is_input_from_file = 0;

int main(int argc, char *argv[]) {
  char *hp, *sp;

  // 引数で渡したファイルを開く
  if (argc == 2) {
    fp = fopen(argv[1], "r");
    is_input_from_file = 1;
  }

  min_caml_stderr = stderr;
  sp = alloca(1000000); hp = malloc(4000000);
  if (hp == NULL || sp == NULL) {
    fprintf(stderr, "malloc or alloca failed\n");
    return 1;
  }
  // fprintf(stderr, "sp = %p, hp = %p\n", sp, hp);
  min_caml_start(sp, hp);
  fclose(fp);
  return 0;
}

// 諸事情によりここにライブラリ関数を足したら, typing.mlに型情報を書く必要がある
void min_caml_print_int(int n){
  printf("%d",n);
}
void min_caml_print_float(float x){
  printf("%f",(float)x);
}
void min_caml_print_newline(){
  printf("\n");
}

float min_caml_float_of_int(int x){
  return (float)x;
}
int min_caml_int_of_float(float x){
  return (int)x;
}
int min_caml_truncate(float x) {
  return (int)x;
}


float min_caml_abs_float(float x) {
  return fabs(x);
}
float min_caml_sqrt(float x) {
  return sqrtf(x);
}
float min_caml_sin(float x) {
    return sinf(x);
}
float min_caml_cos(float x) {
    return cosf(x);
}

// for min-rt
int min_caml_read_int(){
  int x;
  if(is_input_from_file){
    fscanf(fp,"%d",&x);
  }else{
    scanf("%d", &x);
  }
  
  return x;
}
float min_caml_read_float(){
  float x;
  if(is_input_from_file){
    fscanf(fp,"%f",&x);
  }else{
    scanf("%f", &x);
  }
  
  return x;
}

void min_caml_print_byte(int x){
  printf("%c",(char)x);
}

float min_caml_floor(float x){
  return floorf(x);
}
float min_caml_atan(float x){
  return atanf(x);
}
