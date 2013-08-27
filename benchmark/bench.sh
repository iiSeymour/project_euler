#!/bin/bash

for problem in ../problem*; do
    run=$(basename $problem)
    cd ${problem}
    echo
    echo ${run}
    make &> /dev/null
    time ./${run} > /dev/null
    make clean &> /dev/null
    cd ../benchmark
done
