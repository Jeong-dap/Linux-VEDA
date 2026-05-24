#!/bin/bash
# 인자로 받은 숫자가 6의 배수인지 판별한다.
# 6의 배수 조건: 3의 배수이면서 동시에 2의 배수

if [ $# -ne 1 ]; then  # 인자가 정확히 1개가 아니면 사용법 안내 후 종료
	echo "Usage: $0 number"
	exit 1
fi

a=$1  # 첫 번째 인자를 변수에 저장

# 나머지 연산(%)으로 3과 2로 각각 나누어 떨어지는지 확인
if [ $((a%3)) -eq 0 ] && [ $((a%2)) -eq 0 ]; then
	echo "$a is a multiple of 6"
else
	echo "$a is not a multiple of 6"
fi
