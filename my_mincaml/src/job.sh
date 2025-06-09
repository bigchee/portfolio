#!/bin/bash
PREFLAGS="-- mincaml"
POSTFLAGS="-optoff tuple_args -lib RV32/miniMLRuntime.ml -ssa -inline 600"
 # -lib RV32/miniMLRuntime.ml -optoff while 
 #toff cse -optoff constfold -inrep virtual regalloc"
while (( $# > 0 ))
do
  case $1 in
    -i | --inrep)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            echo "'option' requires an argument." 1>&2
            exit 1
        else
            OPT="$2"
            shift
        fi
        echo "${OPT}"
        dune exec $PREFLAGS ${OPT} $POSTFLAGS
        code ${OPT}.inrep
        ;;
    -g | --graph)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            echo "'option' requires an argument." 1>&2
            exit 1
        else
            OPT="$2"
            shift
        fi
        echo 2&> "${OPT}"
        dune exec $PREFLAGS ${OPT} -optoff tuple_args -lib RV32/miniMLRuntime.ml -inline 98 -ssa # こっちでグラフ出力を選択しているほうが親切
        # code ${OPT}.dot
        # dot -Tpng ${OPT}.dot -o ${OPT}.png
        # code ${OPT}.png
        dot -Tpng "gvngraph.dot" -o "gvngraph.png"
        code "gvngraph.png"
        # dot -Tpng "interfuncgraph.dot" -o "interfuncgraph.png"
        # code interfuncgraph.png
        # dot -Tpng "movedgraph.dot" -o "movedgraph.png"
        # code movedgraph.png
        # dot -Tpng "labelgraph.dot" -o "labelgraph.png"
        # code labelgraph.png
        dot -Tpng "allocgraph.dot" -o "allocgraph.png"
        code allocgraph.png
        # code ${OPT}_ssa.s
        # dune exec $PREFLAGS ${OPT} $POSTFLAGS
        # code ${OPT}.s
        ;;
    -s | --asm)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            echo "'option' requires an argument." 1>&2
            exit 1
        else
            OPT="$2"
            shift
        fi
        echo 2&> "${OPT}"
        dune exec $PREFLAGS ${OPT} $POSTFLAGS
        code ${OPT}.s # ssaの方を立ち上げるオプションもほしい
        ;;
    --ssa)
    if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
        echo "'option' requires an argument." 1>&2
        exit 1
    else
        OPT="$2"
        shift
    fi
    echo 2&> "${OPT}"
    dune exec $PREFLAGS ${OPT} $POSTFLAGS
    code ${OPT}_ssa.s # ssaの方を立ち上げるオプションもほしい
    ;;
    *) 
        echo 2&> "$1"
        dune exec $PREFLAGS $1 $POSTFLAGS
        ;;
  esac
  shift
done

# code $1.inrep
# -inrep tuple_args iter
# --profile riscv -optoff tuple_args -optoff cse
# -inrep parser typing tuple_args knormal alpha cse iter closure virtual regalloc
# -optoff tuple_args alpha cse beta elim inline constfold

