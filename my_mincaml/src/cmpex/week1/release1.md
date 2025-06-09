# 第1回コンパイラ実験概説
## mincamlについての整理
まずはmincamlのデフォルト実装についてある程度知る必要がある. 付属ファイルtutorial-mincaml.docはWord文書なので少し読みにくい. 同じ内容がネット上([速攻MinCamlコンパイラ概説](https://esumii.github.io/min-caml/))にあるのでそちらを見た方がわかりやすい. 

以下は内容をまとめた自分用のメモだが, 参考程度までに載せておきます.
### モジュール
#### コンパイラの中心構成

| 役割 | モジュール名   | 出力データ型 |
| --- | --- | --- |
| 字句解析   | Lexer   | Lexing.lexbuf |
| 構文解析   | Parser   | Syntax.t |
| 型推論 | Typing | Syntax.t |
| K正規化 | KNormal | KNormal.t | 
| α変換 | Alpha | KNormal.t | 
| 最適化 | iter(*1) | KNormal.t |
| クロージャ変換 | Closure | Closure.prog |
| 仮想マシンコード生成 | Virtual | Asm.prog |
| SPARC用13bit即値最適化 | Simm |  Asm.prog |
| レジスタ割り当て | RegAlloc | Asm.prog |
| アセンブリ生成 | Emit | 各アーキテクチャのアセンブリ | 

(*1)  モジュールではなく, main内の関数
#### 最適化まわり
| 役割 | モジュール名  |
| --- | --- |  
| β簡約   | Beta   |
| ネストletの簡約 | Assoc | 
| インライン最適化 | Inline |
| 定数畳み込み | ConstFold |
| 不要定義削除 | Elim | 

### 構文論的な定義
#### 抽象構文
pseudoコード, BNF記法
```ocaml
e ::= 
    | e (*式*)
    | op(e_1, ..., e_n) (*プリミティブ演算*)
    | if e_1 then e_2 else e_3 (*条件分岐*)
    | let x = e_1 in e_2 (*変数定義*)
    | x (*変数の読み出し*)
    | let rec x y_1 ... y_n = e_1 in e_2 (*再帰関数定義*)
    | e e_1 ... e_m (*関数呼び出し*)
    | (e_1, ..., e_n) (*組の作成*)
    | let (x_1, ..., x_n) = e_1 in e_2 (*組の読み出し*)
    | Array.create e_1 e_2 (*配列の作成*)
    | e_1.(e_2) (*配列の読み出し*)
    | e_1.(e_2) <- e_3 (*配列への書き込み*)
```
これはsyntax.mlに `Syntax.t` として定義されている.

##### プリミティブ演算 <a id = "プリミティブ演算"></a>
- ブール演算 : not
- 算術演算 
    - 自然数演算 : neg, add, sub
    - 小数演算 : fneg, fadd, fmul, fdiv
- 比較演算 : eq, le
#### 型type.mlから定義を引用. 
```ocaml
type t = 
  | Unit
  | Bool
  | Int
  | Float (*ここまでプリミティブ型*)
  | Fun of t list * t (* (T_1 * ... * T_n ) -> T, arguments are uncurried *2 *)
  | Tuple of t list (* Ocamlでいうところの(T_1 * ... * T_n) *)
  | Array of t (*配列型*)
  | Var of t option ref (*型変数*)
```
(*2)カリー化関数の部分適用を自動サポートしていないので, 関数呼び出しは全ての引数を与える必要がある. 部分適用は変数をおき直して, 別の関数として定義し直す必要がある. 
参照は, サイズ1の配列で代替できる.
#### データ型

|型| 何の型か? | 
|---| ---|
|Id.t | 変数
|Type.t | mincamlの項
|M.t | 型環境 | 

## 第1回実験の内容
説明の都合上, まず問3について言及する必要がある. これは問3が一番大規模な改造をする必要があり, デフォルトのmincamlの型の実装を一部変更してしまっているからである. 
(<span style="color: red; ">10/16追記</span> -> week1フォルダをcmpex以下に移動したので現在とパスが違う部分があるが, 適宜読み替えてほしい)


### 前置きとしての 問3 : 出力されたアセンブリと入力コードの対応がわかるように出力を改造しよう
この問いに対してやるべきことを言うのは簡単で, 単にlexerで読んだトークンが元のファイルの何行目にあったかという情報を順に伝播させればよいだけである. これを実現するためには, 各モジュール(Lexer,...,Emit)における中間結果(モジュール名.tという型を持つ項, 以降Mod.tのように表記. Modというモジュールがあるわけではないことに注意)にオリジナルコードの行数情報(モジュールMlocを新設, 型Mloc.tを持つ項に行数情報をもたせている. Mlocという名前はmeta locationの気持ちで付けたが, 改名すべきかも)を付加すればよい. これに際して, 元のmincamlのMod.tは名前をMod.taと改め, 新しいMod.tを`Mod.t = Mod.ta * Mloc.t` として定義し直した. 元来のMod.tはそのままの実装として, 行数情報を持った型の方を新しい型名で定義する方がわかりやすかったもしれない. OCamlの慣習的には, モジュール内で外から利用するメインの型`Mod.t`とするのでその理念には現在の仕様の方があっているとは思う. この点に関しては皆さまの意見も聞きたいです.

この変更のせいで, `Mod.t`と言ったときに元の実装のものを指しているのか, 現在の行数情報込みのものを指しているのかが曖昧になっています. この違いによって致命的な誤解が生じる恐れは今のところないと思いますが, ところどころ厳密にはMod.taの話であるところをドキュメント内でMod.tと表記している場合があるかと思います. 申し訳ないですが, そこはよしなに読み替えてください. 

以上が, 問1の話をする前に言及しなければならない部分でした.

### 問1 : Syntax.t, Knormal.t 等の中間結果を出力しよう
一番上の表を見てもらえばわかる通り, Syntax.tはparserの結果, KNormal.tはK正規化した結果を持つ型である.  以降は変更したファイルと変更内容を順に示していく. 必要があれば, デフォルトの関数がどのような役割をしているかについても紹介する. 
#### 1. `main.ml`
まず`()`から呼ばれて入力ファイルに対する処理を開始させる関数が`file f`である. ここで`outchan,plogchan,klogchan`という出力ファイルのチャンネルを開く. (このout_channelはOCamlにおけるファイルディスクリプタのようなもの) これらのチャンネルは, 順にアセンブラ,パーサ,K正規化の出力に対応する. (現状処理途中でエラーが発生しても空ファイルが生成するため, 修正したい)

この`file`関数ではファイル関連の開閉操作だけを行い, ファイルの内容を読んでアセンブリを吐くのは`lexbuf`関数である. ここでlexerからemitによるアセンブリ生成の流れを全て制御している. というわけで, 中間結果の出力はここの各モジュール(Lexer,...,Emit)のメイン関数(モジュール名.f, 以降Mod.fのように表記. Modというモジュールがあるわけではないことに注意.)の間に準備した出力用関数(print_p for parser, print_k for knormal)を挿入すればOK.

print_p,print_kの中で中間結果を出力するメイン機能を果たす関数は`Syntax.print, KNormal.print`である. (今後, 他の中間結果の出力にも対応する場合は同様にMod.printという関数を増やすことにします.　また, Mod.printはMod.mlに定義されています.) 
#### 2. `Mod.ml` 
この`Mod.print`関数の実装については基本的に面倒なだけで面白みはありません. ヴァリアントとして定義された抽象構文に対して, 各ケースに対する出力を`Format`モジュールを使っていい感じにインデントさせながら排出するだけです.

例えば, 次のfibを計算するプログラム`./test/fib.ml`についての.parsed, .normalizedの出力を見てみよう.
```ocaml: {.line-numbers}
let rec fib n =
  if n <= 1 then n else
  fib (n - 1) + fib (n - 2) in
print_int (fib 30)
```

次が.parsed (縦長で見にくくない?というコメントは少し待ってください. 理由を説明します.)
```
LETREC # 1
  fib [n]
  IF # 2
    LE # 2
      VAR(n)
      INT(1)
    VAR(n)
    ADD # 3
      APP # 3
        VAR(fib)
        SUB # 3
          VAR(n)
          INT(1)
        
      APP # 3
        VAR(fib)
        SUB # 3
          VAR(n)
          INT(2)
        
  APP # 4
    VAR(print_int)
    APP # 4
      VAR(fib)
      INT(30)
```
出力のお気持ちとしては, 各文法のラベル(LETREC,ADDなどのSyntax.tヴァリアントのタグ)がノード, タグの引数が子となっている構文木を左から右に深くなるように示しています. 空白(とかカンマ)区切りで横にトークンを並べると入れ子構造が把握しにくいので, 行数が嵩むというデメリットを受け入れて, 構造の分かりやすさを優先しました.
中間ノードのところに`# 1` などとコメントが付いているのは, 元のコードの行数との対応を表しています.

ノードの引数を表すのに括弧で囲んでカンマで区切るようにすると, 見た目がごちゃごちゃして直感的に理解しにくいので, 括弧の代わりに(2マス)インデントで依存関係(入れ子構造)を表すようにしました. 2行目で`[n]`と隅括弧が付いているのは, 引数をまとめて表すためです. 仮に2引数だとすれば `[n,m]`のように出力されます.

\
\
次いで, .normalizedも見てみます.　Syntax.tはParser,Typingから出力されますがTypingの方では型検査をして型情報をちょっと加える程度なので目に見える式自体の変化はありませんでした. 一方で, KNormal.tはKNormal,Alpha,そしてiter関数をかませたあとという見た目の違う式が3通りあります. KNormal,Alphaの結果は変数名の違いを除いて同じなのでKNormalの結果(before iter)のみを出力していますが, iterは大幅に式が変わるので比較のためにこちら(after iter)も出力しています.

.parsedとの違いにフォーカスして実装のポイントをお伝えします.
1. 無駄な改行を減らす
この改行削減の例として, [プリミティブ演算](#プリミティブ演算) を取り上げます.
Syntax.tのプリミティブ演算の引数はSyntax.t自体だったので, 複雑な構造になる可能性があり, インデントによる木構造っぽい出力にしていました. 一方で, KNormal.tでのプリミティブ演算の引数は, 変数名に限られています. これは計算の中間結果を変数で置くということがK正規化のルールだからです. というわけで複雑な構造を引数が持たないとわかったので, インデントはやめて括弧とカンマで表すことにより無駄な改行を減らしました. 同様のことが, 関数適用, array/tuple操作についても行えます.

以上のケースではヴァリアントタグのすべての引数が変数(Id.t)に限られたのでまとめて一行に出力することができるようになっていました. 一方で, let系の構文に関しては, `let x = e_1 in e_2`の`e_1,e_2`部分もKNormal.tであるためインデント方式の表記になっています. また, before iterではインデントを2マスから4マスに増やしています. これはletの入れ子がますます複雑になり, 兄弟ノード同士が上下でかなり離れることがあるからです. インデント2マスだと, どこが同じ深さなのかわかりにくいという問題がありました.

after iterではネストされたletを簡約しており, 兄弟ノードが遠く離れることがなくなったのでインデントは2に戻しました.
```
----- Before iter-----
LETREC # 1
    fib [n]
    LET # 2
        Ti3
        INT(1)
        IFLE # 2
            n, Ti3
            VAR (n)
            LET # 3
                Ti6
                LET # 3
                    Ti5
                    LET # 3
                        Ti4
                        INT(1)
                        SUB (n, Ti4)
                    APP (fib, [Ti5] )
                LET # 3
                    Ti9
                    LET # 3
                        Ti8
                        LET # 3
                            Ti7
                            INT(2)
                            SUB (n, Ti7)
                        APP (fib, [Ti8] )
                    ADD (Ti6, Ti9)
    LET # 4
        Ti2
        LET # 4
            Ti1
            INT(30)
            APP (fib, [Ti1] )
        EXFAPP (print_int, [Ti2] )
----- After iter-----
LETREC # 1
  fib.10 [n.11]
  LET # 2
    Ti3.14
    INT(1)
    IFLE # 2
      n.11, Ti3.14
      VAR (n.11)
      LET # 3
        Ti4.20
        INT(1)
        LET # 3
          Ti5.19
          SUB (n.11, Ti4.20)
          LET # 3
            Ti6.15
            APP (fib.10, [Ti5.19] )
            LET # 3
              Ti7.18
              INT(2)
              LET # 3
                Ti8.17
                SUB (n.11, Ti7.18)
                LET # 3
                  Ti9.16
                  APP (fib.10, [Ti8.17] )
                  ADD (Ti6.15, Ti9.16)
  LET # 4
    Ti1.13
    INT(30)
    LET # 4
      Ti2.12
      APP (fib.10, [Ti1.13] )
      EXFAPP (print_int, [Ti2.12] )
```

#### 改良の余地
- 他の中間表現(Closure.prog, Asm.prog)の出力に対応. (<span style="color: red; ">10/16追記</span> -> 暫定版(未デバッグ)は実装した)
- エラー発生時に出力ファイルを生成しない. (<span style="color: red; ">10/16追記</span> -> 対応済み)
- 大きなプログラムに対して上手く動作しないかもしれないので, チェックする.
- Mod.printのコードを綺麗に整理.

### 問2 : パースエラー時や型エラー時にどの箇所に問題があったか示すようにせよ
#### パースエラー
parser.mlyでのエラーはデフォルトでfailwithを呼ぶようになっていたが, これだとどのモジュールからのエラーか判別しにくいのでSyntax.Errorという例外を送出するように変更した. また, 何行目のエラーかを判定するのにParsingだけでは恐らく無理で, Lexingの方の情報も扱う必要があるため, main.mlでまとめてエラーの位置を取得するようにした. 

エラーの出力はocamlのものを参考にして, 次のような感じ.
```shell
# ocaml
$ ocaml ./week1/sum-e.ml
  File "./week1/sum-e.ml", line 3, characters 10-11:
  3 |   sum (x -) + x in
                ^
Error: Syntax error

# 改造mincaml
$ dune exec mincaml ./week1/sum-e
  Error: Syntax error at line 3, characters 10-11
  3 |   sum (x -) + x in
                ^
```

この出力の仕組みとしては, main.mlのlexbuf関数で, try with構文によりSyntax.Errorを補足した後, まずはpos/pos2よりエラーが発生したトークンの先頭/末尾の情報を取得している. ついで, col/col2により行内でのオフセットを求めて, nrowで行番号を取得. `Bytes.to_string l.lex_buffer`により読み込んだ入力ファイルの内容が一つの文字列にまとめられたものを取得し, `String.split_on_char '\n' `で行ごとの文字列を集めたリストに変換. あとは適当にフォーマットして出力している. エラートークンを指す`^`はオフセット分だけ空白を前に出力して位置を揃えている.

#### 型エラー
こちらの方がパースエラーよりも複雑で, typing.mlにおいて型推論をする関数`g` と再般単一化子を求める関数`unify`に変更が必要である. それぞれの関数で, 型検査の失敗は例外`Error of Syntax.t * Type.t * Type.t `, `Unify of Type.t * Type.t`を送出することになっていた. これに対し, 元の何行目にあった項に関して型検査をしているのかを表すために`Mloc.t`の項を付加してあげればよい.

なお, 型推論では元のコードに由来しない型の単一化が必要なときがある. たとえば, if節の一つ目の引数部はbool値でなければならないが, このboolに対応するトークンがあるわけではない. このようなケースには`Mloc.dummy`というダミーの位置情報を用いている.

今回の型エラーの出力はかなり手抜きで, 特に複雑な入力ケースに対しては妥当な出力が得られるかは十分にデバッグできていない. しかし, mincamlに与えるファイルは基本文法的に正しいものであるはずだし, 多相関数もないので非自明な型エラーが起きる可能性が低いと考えて, 最低限の実装でも良いかなという判断の下でこうなっていますという言い訳をさせてください. それでも, 明らかに問題がある出力ケースを発見したら教えてください. 

```shell
# ocaml
$ ocaml ./week1/fib-e.ml
File "./week1/fib-e.ml", line 2, characters 5-6:
2 |   if 1 then n else
         ^
Error: This expression has type int but an expression was expected of type
         bool
       because it is in the condition of an if-statement

# 改造mincaml
$ dune exec mincaml ./week1/fib-e
Typing error at line 2: fail to unify Int and Bool
```

### 問3 : 出力されたアセンブリと入力コードの対応がわかるように出力を改造しよう (本題)
前置きで説明した通り, ひたすらモジュールの出力型`Syntax.t, KNormal.t, Closure.prog, Asm.prog`に`Mloc.t`を適切に挿入していくという作業でした.

x86のアセンブリについてしかコメントを追加できていませんが, これも完全に上手くいっているわけではなく多少の問題が残っています. (<span style="color: red; ">10/16追記</span> -> 以下で言及されている既知の問題ケースは解消. 他にもバグはあると思う, 特にarray/tupleまわりの文法.)　
とはいえ, スライドに載っていたgcdについてはちゃんと出力できていますし, 8割くらいは大丈夫だと思っています. 多分, できるだけ早く原因を特定して修正します.

レジスタ退避/復帰, 引数や返り値を%eaxに設定するという呼び出し既約の都合上追加した命令にはその旨を伝えるコメントを付けました. あと, コメントの位置が揃えられていないという問題もあります...

以下は`./week1/gcd.ml`の例.
```ocaml
let rec gcd m n = 
  if m = 0 then n else
  if m <= n then 
    gcd m (n - m)
  else 
    gcd n (m - n)
  in print_int (gcd 18 21)
```
x86アセンブリに変換.
```
.data
.balign	8
.text
gcd.7:
	cmpl	$0, %eax		# 2
	jne	je_else.17  		# 2
	movl	%ebx, %eax		# 2 (retv set)
	ret
je_else.17:
	cmpl	%ebx, %eax		# 3
	jg	jle_else.18  		# 3
	subl	%eax, %ebx		# 4
	jmp	gcd.7
jle_else.18:
	subl	%ebx, %eax		# 6
	movl	%ebx, 0(%ebp)  	# 6 (args set)
	movl	%eax, %ebx  	# 6 (args set)
	movl	0(%ebp), %eax  	# 6 (args set)
	jmp	gcd.7
.globl	min_caml_start
min_caml_start:
.globl	_min_caml_start
_min_caml_start: # for cygwin
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%ebp
	movl	32(%esp),%ebp
	movl	36(%esp),%eax
	movl	%eax,min_caml_hp
	movl	$18, %eax		# 7
	movl	$21, %ebx		# 7
	call	gcd.7
	call	min_caml_print_int
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
```

別の例として, `./test/fib.ml`を見てみる.
```ocaml
let rec fib n =
  if n <= 1 then n else
  fib (n - 1) + fib (n - 2) in
print_int (fib 30)
```
変換後
-1というダミーがjle_else.24の最後に出力されてしまっている. このようなプリミティブ演算と返り値の%eaxへの移動がmergeされているケースに対して上手くいっていないようである. また, call前後のスタックフレーム%ebpの移動に関しては特にコメントをつけていない.
```
.data
.balign	8
.text
fib.10:
	cmpl	$1, %eax		# 2
	jg	jle_else.24  		# 2
	ret
jle_else.24:
	movl	%eax, %ebx		# 3
	subl	$1, %ebx		# 3
	movl	%eax, 0(%ebp)	# save
	movl	%ebx, %eax  	# 3 (args set)
	addl	$8, %ebp
	call	fib.10			# 3
	subl	$8, %ebp
	movl	0(%ebp), %ebx	# restore
	subl	$2, %ebx		# 3
	movl	%eax, 4(%ebp)	# save
	movl	%ebx, %eax  	# 3 (args set)
	addl	$8, %ebp
	call	fib.10			# 3
	subl	$8, %ebp
	movl	4(%ebp), %ebx	# restore
	addl	%ebx, %eax		# -1 (retv set)
	ret
.globl	min_caml_start
min_caml_start:
.globl	_min_caml_start
_min_caml_start: # for cygwin
	pushl	%eax
	pushl	%ebx
	pushl	%ecx
	pushl	%edx
	pushl	%esi
	pushl	%edi
	pushl	%ebp
	movl	32(%esp),%ebp
	movl	36(%esp),%eax
	movl	%eax,min_caml_hp
	movl	$30, %eax		# 4
	call	fib.10			# external
	call	min_caml_print_int			# external
	popl	%ebp
	popl	%edi
	popl	%esi
	popl	%edx
	popl	%ecx
	popl	%ebx
	popl	%eax
	ret
```
