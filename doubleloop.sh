#!/bin/bash
# 이중 for 루프를 사용해 2단부터 9단까지의 구구단을 출력한다.

for((base = 2; base < 10; base++))   # 단(2~9) 반복
do
	for ((mult = 1; mult < 10; mult++))  # 곱할 수(1~9) 반복
	do
		# echo "$base * $mult = $((base * mult))"   # 산술 치환 방식 (주석 처리됨)
		echo "$base * $mult = $(expr $base \* $mult)"  # expr 명령어로 곱셈 출력
	done
	echo " "  # 단마다 빈 줄로 구분
done
