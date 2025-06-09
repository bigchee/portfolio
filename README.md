# ポートフォリオ

## 成果物一覧
### my_mincaml
OCamlのサブセットであるMinCamlのコンパイラ([min-caml](https://github.com/esumii/min-caml)) を改造したもの. バックエンドを新しく書いてSSA形式の中間表現を用いるものに変更した. また対象アーキテクチャにRISCVを追加した.

これはCPU実験と呼ばれる講義(参考: [シラバス](https://catalog.he.u-tokyo.ac.jp/detail?code=0510033&year=2022))の中でコンパイラ係を担当した際に作ったものである.
詳細な説明資料は `my_mincaml/doc`のなかにある. `final_report.pdf`はCPU実験全体, `mid_meeting_slide.pdf`, `final_slide.pdf`はコンパイラ開発についての説明をしている. 以下は`final_slide.pdf`の内容の抜粋である.

##### 概要
- フロントエンドはmincamlをそのまま利用
	+ 最適化のモジュールを追加, 必要に応じて仕様を一部変更

- バックエンドはSSA形式のものをスクラッチ
- llvm mirを参考にSSAの命令列 + コントロールフローグラフ(CFG)による表現を採用
- 局所的な変更をSSA命令列, 大局的な構造の変更をCFGでそれぞれ独立に行える

##### 実装した機能一覧
###### フロントエンド (KNormal.t)
- 共通部分式削除CSE 
- 基本的に即値が共通化されるだけ
- エイリアス解析
- while式導入 
- ループ不変式を外に出す. 定数だけ.
- グローバル配列導入
- 組型引数展開 : インライン展開と干渉したので使われていない
- +,-演算子のオーバーロード

###### バックエンド (SSA形式)
- レジスタ割当
- グローバル値番号付けGVN 
- 分岐で共通の引数設定を分岐前に移動 
- 分岐の畳み込み
- Φ関数のmvと変数の定義を合体させる
- BB内スケジューリング
- ループのブロック出力順変更 : ループのジャンプが1つ減る

### slides/enshu3
Robert Atkey による 依存型と線形型のある体系を形式化した論文 Syntax and
Semantics of Quantitative Type Theory を読んだ際の発表資料.
`QTT1.pdf`は構文論に関するSection2の内容, `QTT2and3.pdf`は意味論に関するSection3-4の内容を扱っている.

`QTT1.pdf`では, 主に次のような内容を扱った.
- 線形論理のテンソル演算子のルールを見ながら, QTTのdependent tensor typesが通常の依存型体系におけるdependent product typesとどのように違うのかを比較
- 線形型のプログラムの中で何回その項が使われるかということを気にする性質が, 依存型と組み合わされた際の代入規則の難しさ

`QTT2and3.pdf`では, 主に次のような内容を扱った.
- 依存型体系のCategory with familiesによる圏論的意味論と, QTTのための拡張
- 依存型体系のLinear Combinatory Algebraによる実現可能性モデルと, QTTのための拡張
- QTTを理論的なコアとするプログラミング言語Idris2について