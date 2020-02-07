#!/bin/bash
RESULT=result2
rm -f ${RESULT}
# make -j$(nproc)
TEST_DIR=../test
./tesseract ${TEST_DIR}/t7.png ${RESULT} \
    --tessdata-dir ${PWD}/../tessdata_fast \
    -c paragraph_text_based=true \
    -c classify_debug_level=9 \
    -c tessedit_create_hocr=true \
    -l kor+eng \
    --oem 1  \
    --psm 7