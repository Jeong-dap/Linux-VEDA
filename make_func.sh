#!/bin/bash
# 함수 정의와 호출 방법을 보여주는 예제

# make_a_pizza: 전달된 인자 정보를 출력하는 함수
function make_a_pizza() {
	echo "in function num of args: $#"  # 함수에 전달된 인자 개수
	echo "command: $0"                  # 스크립트 파일명 ($0은 함수 내에서도 스크립트명)
	echo "1st arg: $1"                  # 첫 번째 인자
}

echo "first fuction example"
make_a_pizza "first args"  # 함수 호출
