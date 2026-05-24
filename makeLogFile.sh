#!/bin/bash
# 현재 디렉토리의 모든 .txt 파일을 .log 확장자로 일괄 변환한다.

for f in *.txt;  # 현재 디렉토리의 .txt 파일을 순회
do
	# ${f%.txt}: f에서 .txt 접미사를 제거한 이름
	mv "$f" "${f%.txt}.log";
	echo "Renaming $f to ${f%.txt}.log";
done
