USAGE="\n USAGE: ./run_tareador.sh prog-tareador \n
        prog-tareador        -> Tareador program name\n"

if (test $# -lt 1 || test $# -gt 1)
then
        echo -e $USAGE
        exit 0
fi

make $1
rm -rf .tareador_precomputed_$1
tareador_gui.py --llvm --lite $1 -b "-n 32 -s 1024 -m 1024"
