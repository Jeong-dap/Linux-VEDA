#!/bin/bash
# 현재 시스템의 기본 정보(사용자, 경로, 날짜, OS, 프로세스 수)를 출력한다.

echo "-------------System Information-------------"

echo "Username : $(whoami)"           # 현재 로그인한 사용자명
echo "Current Directory : $(pwd)"     # 현재 작업 디렉토리 경로
echo "Date : $(date)"                 # 현재 날짜 및 시간
echo "OS : $(uname -a)"              # 커널 및 OS 상세 정보

proc_count=$(ps -ef | wc -l)         # 실행 중인 전체 프로세스 수
echo "Process Count : ${proc_count}"
