#!/bin/bash

for problem in ../problem*; do
    run=$(basename $problem)
    ${problem}/make
    time ${problem}/${run}
    ${problem}/make clean
done
