#!/bin/bash
# /var/log/myapp 디렉토리에서 7일 이상 지났고 100MB 초과인 .log 파일을
# tar.gz로 압축 보관한 뒤 원본을 삭제하는 로그 정리 스크립트

# 스크립트 실행 로그를 cleanup.log에 추가 기록 (표준 에러도 함께)
exec >> "/var/log/cleanup.log" 2>&1

# 조건에 맞는 파일이 존재하는지 먼저 확인 (-mtime +6: 7일 초과, -size +99M: 99MB 초과)
result=$(find /var/log/myapp -type f -name "*.log" -mtime +6 -size +99M)

if [ -n "$result" ]; then
        echo "Creating archive: old_large_logs.tar.gz"

        # 해당 파일들을 tar.gz로 압축; 압축 성공 시에만 원본 삭제
        find /var/log/myapp -type f -name "*.log" -mtime +6 -size +99M | tar -czvf /var/log/old_large_logs.tar.gz --files-from=-
        if [ $? -eq 0 ]; then
                find /var/log/myapp -type f -name "*.log" -mtime +6 -size +99M -delete
        fi
else
        echo "No .log files older than 7 days and larger than 100MB"
fi
