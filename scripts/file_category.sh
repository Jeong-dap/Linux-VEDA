#!/bin/bash
# 현재 디렉토리의 파일들을 확장자에 따라 txt/, log/, scripts/ 폴더로 분류한다.

mkdir txt log scripts  # 분류 대상 디렉토리 생성

for file in *; do  # 현재 디렉토리의 모든 항목 순회
	case "$file" in
		*.txt)
			mv "$file" txt/   # .txt 파일 → txt/
			;;
		*.log)
			mv "$file" log/   # .log 파일 → log/
			;;
		*.sh)
			mv "$file" scripts/  # .sh 파일 → scripts/
			;;
	esac
done
