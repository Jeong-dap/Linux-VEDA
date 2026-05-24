#!/bin/bash
# 다양한 비교 연산자 방식으로 변수 a를 b, c, d와 비교하는 예제
# (( )) 산술 비교와 [ ] -gt 플래그 비교 방식을 함께 사용한다.

a=30
b=15
c=30
d=40

# (( )) 방식: 산술 표현식으로 직관적인 비교 (>, <, == 등 사용 가능)
if (( a > b )); then
    echo "a is bigger than b"
elif (( a > c )); then         # a == c이므로 이 조건은 거짓
    echo "a is bigger than c"
elif [ "$a" -gt "$d" ]; then   # [ ] 방식: -gt(greater than) 플래그로 비교
    echo "a is bigger than d"
else
    echo "a is not bigger than any of them (b, c, d)"
fi