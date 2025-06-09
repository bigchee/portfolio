#!/bin/bash
LIB="stub_for_spike.c RV32/libmincaml.S"
CFLAGS="-march=rv32g -g -O2 -Wall"
SFLAGS="--isa=RV32IMAFDC"
# PK="/opt/riscv/riscv32-unknown-linux-gnu/bin/pk"
PK="/opt/riscv/pk/riscv32-unknown-elf/bin/pk"
while (( $# > 0 ))
do
  case $1 in
    -m | --make)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            echo "'option' requires an argument." 1>&2
            exit 1
        else
            OPT="$2"
            shift
        fi
        echo 2&> "${OPT}"
        riscv32-unknown-elf-gcc $CFLAGS "${OPT}".s $LIB -lm -o "${OPT}"
        ;;
    -d | --debug)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            echo "'option' requires an argument." 1>&2
            exit 1
        else
            OPT="$2"
            shift
        fi
        echo 2&> "${OPT}"
        spike $SFLAGS -d $PK "${OPT}" raytracer/sld/contest.sld 
        ;;
    -e | --exec)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            echo "'option' requires an argument." 1>&2
            exit 1
        else
            OPT="$2"
            shift
        fi
        echo 2&> "${OPT}"
        spike $SFLAGS $PK "${OPT}"
        ;;
    -t | --test)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            echo "'option' requires an argument." 1>&2
            exit 1
        else
            OPT="$2"
            shift
        fi
        echo "${OPT}"
        riscv32-unknown-elf-gcc $CFLAGS "${OPT}".s $LIB -lm -o "${OPT}"
        spike $SFLAGS $PK "${OPT}"
        ;;
    -a | --all)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            echo "'option' requires an argument." 1>&2
            exit 1
        else
            OPT="$2"
            shift
        fi
        # echo 2&> "${OPT}"
        ./job.sh ${OPT}
        riscv32-unknown-elf-gcc $CFLAGS "${OPT}".s $LIB -lm -o "${OPT}"
        # ./dmp.sh "${OPT}"
        spike $SFLAGS $PK "${OPT}"
        ;;
    --minrt)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            TARGETIMG="contest"
        else
            TARGETIMG="$2"
            shift
        fi
        OPT="min-rt/min-rt"
        BASEDIR="min-rt"
        # echo 2&> "${OPT}"
        dune exec --profile rv32 -- mincaml $OPT -optoff tuple_args -optoff cse
        riscv32-unknown-elf-gcc $CFLAGS "${BASEDIR}/globals.s" "${OPT}".s $LIB  -lm -o "${OPT}"
        # ./dmp.sh "${OPT}" --log-commits --log="${OPT}.log"
        spike  $SFLAGS $PK "${OPT}" "${BASEDIR}/${TARGETIMG}.sld" > "${BASEDIR}/${TARGETIMG}.ppm"
        eog "${BASEDIR}/${TARGETIMG}.ppm"
        ;;
    --rt)
        if [[ -z "$2" ]] || [[ "$2" =~ ^-+ ]]; then
            TARGETIMG="contest"
        else
            TARGETIMG="$2"
            shift
        fi
        BASEDIR="raytracer"
        OPT="${BASEDIR}/minrt"
        echo 2&> "${OPT}"
        dune exec --profile rv32 -- mincaml $OPT -optoff tuple_args -inline 10
        riscv32-unknown-elf-gcc $CFLAGS "${OPT}".s $LIB -lm -o "${OPT}"
        # ./dmp.sh "${OPT}"
        spike $SFLAGS $PK "${OPT}" "${BASEDIR}/sld/${TARGETIMG}.sld" > "${BASEDIR}/ppm/${TARGETIMG}.ppm"
        # 2> "${BASEDIR}/sld/${TARGETIMG}.instlog"
        # 比較用プログラムが存在しなかったらmakeするよ
        # if [ ! -e "ppmConvert" ]; then echo "make ppmConvert" ;gcc ppmConvert.c -o ppmConvert; fi
        ./ppmConvert -d "${BASEDIR}/ppm/${TARGETIMG}.ppm"
        eog "${BASEDIR}/ppm/${TARGETIMG}.ppm"
        ;;
  esac
  shift
done