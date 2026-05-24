#!/bin/bash
# /etc/passwd 파일을 조회하여 인자로 받은 사용자명이 시스템에 존재하는지 확인한다.
# 사용법: ./user_check.sh <username>

if [ $# -ne 1 ]; then  # 인자가 정확히 1개가 아니면 사용법 출력 후 종료
	echo "Usage: $0 username"
	exit 1
fi

user=$1  # 확인할 사용자명

# /etc/passwd에서 해당 사용자명으로 시작하는 행을 검색 (^: 행 시작 앵커)
info=$(grep "^$user" /etc/passwd)

if [ -z "$info" ]; then  # 검색 결과가 비어있으면 사용자 없음
	echo "user not found"
else
	echo "user exists"
fi
