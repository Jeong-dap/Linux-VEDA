#!/bin/bash
# 파일의 크기와 할당량(QUOTA) 대비 사용률(%)을 출력한다.
# 사용법: ./usageFile.sh <파일명>

if [ $# -ne 1 ]; then  # 인자가 1개가 아니면 사용법 출력
    echo "사용법: $0 <파일명>"
fi

FILENAME=$1       # 검사할 파일 경로
QUOTA=1000        # 기준 할당량 (KB 단위, 약 1MB)

if [ ! -f "$FILENAME" ]; then  # 파일이 없으면 오류 메시지 출력
    echo "파일이 존재하지 않습니다: $FILENAME"
fi

# du -s: 파일 전체 크기를 블록 단위로 출력, awk로 첫 번째 열(크기)만 추출
FILESIZE=$(du -s "$FILENAME" | awk '{print $1}')

# awk BEGIN 블록에서 부동소수점 나눗셈으로 사용률을 소수점 두 자리까지 계산
PERCENT=$(awk "BEGIN {printf \"%.2f\", ($FILESIZE / $QUOTA) * 100}")

echo "파일명  : $FILENAME"
echo "파일크기: ${FILESIZE} KB"
echo "할당량  : ${QUOTA} KB (1GB)"
echo "사용률  : ${PERCENT}%"

