## 改造版用のREADME

~~ビルドはMakefile, duneの双方に対応.~~
OCamlの外部ライブラリを使う影響でduneのビルドにのみ現在対応. 

### Makefileを使う場合

- ビルドは`./to_x86;make`で行える.
- 全てのtestに対してアセンブリ生成, および実行結果をocamlコンパイラによる実行ファイルと比較してくれる.  -> まとまったテストに便利
- 個別のファイルを指定してアセンブリ/実行ファイル生成もできる. (testフォルダ以下のファイルのみ)
- こちらでmakeした後にduneを使う場合, asm.mlなどが衝突しているといわれる. これは`./to_x86`でつくったシンボリックリンクのせい. `./unlink.sh`でリンクを削除できるので, これをやってからdune版を使うようにする.

### duneを使う場合

デフォルトのプロファイルが自班向けのアーキテクチャになっている.
オプション無しなら, `dune exec ${FILENAME(without ".ml")}`
オプションを使う場合は, 
`dune exec -- mincaml ${FILENAME(without ".ml")} [-inline n] [-iter n] [-optoff ${OPT_NAME}]* [-inrep [${INREP_NAME}]* ]`

オプションに関する詳細は, `dune exec -- mincaml --help` で確認できる.

- いちいちオプションを指定して長いコマンドを打ちたくないので, `./job.sh`に適当なオプションを指定しておいて`./job.sh ${FILENAME(without ".ml")}`と実行すると多少便利.
- フォルダ内の中間表現ファイルをまとめて消す`./mclean.sh`も用意した.

## riscvシミュレーション環境の作り方

基本的には[このサイト](https://zenn.dev/ohno418/articles/5f6d5e01dc4981)を参考にやればよい. 以下に一部を引用しつつ, 補足していく.

### 環境設定

```shell
$ export RISCV=/opt/riscv # 好きなパスでいいが, この設定が鉄板らしい
$ export PATH=$RISCV/bin:$PATH
```
これをシェルで実行するだけだと, ログアウトしたら消える設定なので永続的じゃない.
ログインの度に実行される`~/.profile`などに書いてから, `source ~/.profile`として設定を読み込むとよい.

以下ではriscv-gnu-toolchain(クロスコンパイラなど), riscv-isa-sim(ISAシミュレータ), riscv-pk(SpikeシミュレータのIOを処理するOS代わり)を順にインストールしていく. 
共通の流れとしては, 対象のリポジトリにgit cloneして, 適切にconfigを設定し, make(とmake install)が必要であればする. 
セットアップ全般に関してはリポジトリのREADMEを読む, configに関しては`./config --help`とすれば大体のことがわかる.

git cloneするのは好きなディレクトリでいい.

### riscv-gnu-toolchain

```shell
$ git clone https://github.com/riscv-collab/riscv-gnu-toolchain.git
$ cd riscv-gnu-toolchain
```

READMEに必要なパッケージが書いてあるので事前にインストールしておく.
configの設定は, `./configure --prefix=$RISCV --with-arch=rv32g --with-abi=ilp32d --target=riscv32-unknown-elf --with-multilib-generator=rv32imafdc-ilp32f--`とすれば多分うまく32ビット用になる. 
configをいじってから`make linux -j$(nproc)`あるいは`make`のみ?でうまくインストールできるはず. かなり時間がかかるので, マルチコアなら`-j`で並列性を上げることをお勧めする. インストールの途中で何回かエラーが出るかもしれないが, `-k`などでエラーが出ても続けさせ, 何回かmakeをやり直せば最終的にはうまく行くはず(?)

インストールがうまく行ったかは`$ riscv32-unknown-linux-gnu-gcc --version` で確認できる.

### riscv-isa-sim

```shell
$ git clone https://github.com/riscv-software-src/riscv-isa-sim.git
$ cd riscv-isa-sim

# Device Tree Compilerが必要らしい?
$ sudo apt-get install device-tree-compiler

$ mkdir build
$ cd build
# 必ずbuildディレクトリに移動してからconfigを弄る
$ ../configure --prefix=$RISCV --with-target=riscv32-unknown-elf
$ make
$ sudo make install
```
インストールの確認は`$ ./spike --help`などで.

### riscv-pk

```shell
$ git clone https://github.com/riscv-software-src/riscv-pk.git
$ cd riscv-pk
$ mkdir build
$ cd build
# 必ずbuildディレクトリに移動してからconfigを弄る
$ ../configure --prefix=$RISCV/pk --host=riscv32-unknown-linux-gnu
$ make
$ make install
```

## シミュレーションの方法

minrt以外(他のファイルに依存関係がないプログラム)なら, `./spike.sh -a XXX`.
min-rt/min-rtは`./spike.sh --minrt`, raytracer/minrtは`./spike.sh --rt`でシミュレーションできる.

`./spike.sh -a`は`./job.sh`を使ってmincamlでアセンブラを吐かせる. mincamlのオプションやprofileをそちらで調整する必要があることに注意. 
`./spike_test.sh`で`test`フォルダのテストケースをすべて走らせることができる.

## オリジナル版のREADME

An educational compiler for a minimal subset of OCaml, written in
~2000 lines of OCaml.  For details, see:

http://esumii.github.io/min-caml/ (Japanese Web page)
http://esumii.github.io/min-caml/jpaper.pdf (Japanese academic paper)
http://esumii.github.io/min-caml/index-e.html (English Web page)
http://esumii.github.io/min-caml/paper.pdf (English academic paper)

1. Install OCaml (http://caml.inria.fr/) if you haven't

2. Download (and expand) MinCaml, e.g.
   git clone https://github.com/esumii/min-caml.git

3. cd min-caml/

4. Execute ./to_x86 for x86
   (or ./to_sparc for SPARC, ./to_ppc for PowerPC)

5. make

6. If you like, try the ray tracer

     cd min-rt/ ; make

   though it takes time because of OCaml bytecode (for testing by
   comparison), not MinCaml

[FAQ 1] Is there an x86_64 version?

[A] There is, but it is left as an exercise for students and _not_
included in this distribution.

[FAQ 2] Is there a version that emits C code?

[A] See above.

[Updates on October 9, 2013]

- Moved from SourceForge https://sourceforge.net/p/min-caml/code/ to
  GitHub https://github.com/esumii/min-caml

- Merged the Mac OS patch by shinh
  https://twitter.com/shinh/status/322043108021907458

[Update on July 24, 2012]

- 32-bit x86 (with SSE2, that is, Pentium IV or later) is now
  supported (on Linux and Cygwin); execute ./to_x86 before make.

[Updates on September 17, 2008]

- PowerPC is now supported (in addition to SPARC), thanks to
  Ms. Masuko and Prof. Asai in Ochanomizu University.  You _must_
  execute either ./to_ppc or ./to_sparc _before_ make.

- The register allocator now uses a simpler algorithm.  It omits the
  backtracking (ToSpill and NoSpill) in previous versions.
