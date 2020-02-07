#!/bin/bash
RESULT=result2.txt
rm -f ${RESULT}
make -j4
TEST_DIR=../test
./tesseract ${TEST_DIR}/t7.png ${RESULT} \
    --tessdata-dir ${PWD}/../tessdata_fast \
    -c paragraph_text_based=true \
    -c classify_debug_level=9 \
    -l kor+eng \
    --oem 1  \
    --psm 7