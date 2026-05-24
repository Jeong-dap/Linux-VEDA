#!/bin/bash
# 두 가지 for 루프 방식을 비교한다:
# 1) C 스타일 루프  2) seq 명령어를 이용한 범위 루프

# C 스타일: 0, 1, 2, 3, 4 출력
for((i=0; i < 5; i++))
do
	echo "loop index : $i"
done

# seq 1 2 10 → 1부터 10까지 2씩 증가: 1, 3, 5, 7, 9
for n in $(seq 1 2 10)
do
	echo "ranged : $n"
done
