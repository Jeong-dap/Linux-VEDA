# Shell Script 연습 모음

Bash 쉘 스크립트 학습용 예제 파일 모음입니다.

---

## 루트 디렉토리 스크립트

| 파일 | 설명 |
|------|------|
| [all_of_params.sh](all_of_params.sh) | `$*`와 `$@`의 차이를 비교하는 파라미터 처리 예제 |
| [clean_log.sh](clean_log.sh) | `/var/log/myapp`에서 7일 이상 경과하고 100MB를 초과한 `.log` 파일을 `tar.gz`로 압축 후 원본 삭제 |
| [doubleloop.sh](doubleloop.sh) | 이중 `for` 루프로 2단~9단 구구단 출력 |
| [legend.sh](legend.sh) | C 스타일 `for` 루프로 0~4 인덱스 출력 |
| [looptest.sh](looptest.sh) | C 스타일 루프와 `seq`를 이용한 범위 루프 비교 |
| [makeLogFile.sh](makeLogFile.sh) | 현재 디렉토리의 `.txt` 파일을 `.log` 확장자로 일괄 변환 |
| [make_func.sh](make_func.sh) | 함수 정의 및 호출 방법 예제 |
| [operator_ex.sh](operator_ex.sh) | `(( ))` 산술 비교와 `[ ] -gt` 플래그 비교 방식 비교 |
| [test.sh](test.sh) | 인자로 받은 숫자가 6의 배수인지 판별 (3의 배수 AND 2의 배수 조건) |
| [usageFile.sh](usageFile.sh) | 파일 크기와 기준 할당량 대비 사용률(%)을 출력. 사용법: `./usageFile.sh <파일명>` |
| [user_check.sh](user_check.sh) | `/etc/passwd`를 조회하여 사용자명이 시스템에 존재하는지 확인. 사용법: `./user_check.sh <username>` |

---

## scripts/ 서브디렉토리

| 파일 | 설명 |
|------|------|
| [scripts/hello.sh](scripts/hello.sh) | 기본 Hello World 출력 예제 |
| [scripts/hello2.sh](scripts/hello2.sh) | Hello World 출력 예제 (변형) |
| [scripts/test.sh](scripts/test.sh) | 사용자명, 현재 경로, 날짜, OS 정보, 프로세스 수 등 시스템 기본 정보 출력 |
| [scripts/file_category.sh](scripts/file_category.sh) | 현재 디렉토리 파일을 확장자별로 `txt/`, `log/`, `scripts/` 폴더에 자동 분류 |
| [scripts/a.sh](scripts/a.sh) | 테스트용 빈 스크립트 |
| [scripts/b.sh](scripts/b.sh) | 테스트용 빈 스크립트 |
