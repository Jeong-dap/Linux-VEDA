#!/bin/bash
# C언어 스타일의 for 루프로 0부터 4까지 인덱스 번호를 출력한다.

for ((i = 0; i < 5; i++))  # i를 0에서 시작해 5가 되기 전까지 1씩 증가
do
    echo "number $i"
done
