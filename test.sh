#!/bin/bash
rm -f result2.txt
TEST_DIR=../test
./tesseract ${TEST_DIR}/t5.png result2 \
    --tessdata-dir ${PWD}/../tessdata_fast \
    -l kor+eng --oem 1 \
    run.cfg