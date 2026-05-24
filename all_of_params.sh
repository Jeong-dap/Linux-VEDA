#!/bin/bash
# 스크립트에 전달된 모든 파라미터를 출력하고, $*와 $@의 차이를 비교한다.
# $*: 모든 인자를 하나의 문자열로 취급, $@: 각 인자를 별개로 취급

echo "total number of params: $#"  # 전달된 인자 개수
echo "\$* is '$*'"                  # 모든 인자를 하나의 문자열로 출력
echo "\$@ is '$@'"                  # 모든 인자를 공백으로 구분해 출력

# "$*"로 루프 → 모든 인자가 하나의 덩어리로 묶여 한 번만 반복
echo "1st  result of $*"
for param in "$*"
do
	echo "param: $param"
done

# "$@"로 루프 → 각 인자가 개별 원소로 취급되어 인자 수만큼 반복
echo "2nd result of $@"
for param in "$@"
do
	echo "param: $param"
done
