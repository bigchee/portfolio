#!/bin/bash
TESTS="print sum-tail gcd sum fib ack even-odd \
adder adder2 funcomp cls-rec cls-bug cls-bug2 cls-reg-bug \
shuffle spill spill2 spill3 join-stack join-stack2 join-stack3 \
join-reg join-reg2 non-tail-if non-tail-if2 \
inprod inprod-rec inprod-loop matmul matmul-flat \
manyargs"
TESTDIR="test"
FAILTEST=""
for test in $TESTS;do
    echo $test
    ./spike.sh -a $TESTDIR/$test > $TESTDIR/$test.res
    ocaml $TESTDIR/$test.ml > $TESTDIR/$test.ans
    diff $TESTDIR/$test.res $TESTDIR/$test.ans > $TESTDIR/$test.cmp
    if [ -s $TESTDIR/$test.cmp ]; then echo "test fail : $test"; FAILTEST="$test $FAILTEST"; else rm $TESTDIR/$test.res $TESTDIR/$test.ans $TESTDIR/$test.cmp; fi
done

if [ "$FAILTEST" ]; then echo "test fail : $FAILTEST"; else echo "ALL TEST SUCCEED !!!!"; fi