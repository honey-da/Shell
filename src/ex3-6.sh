#!/bin/bash
# ex3-6.sh : 입력 인자를 runner.py 로 넘겨 실행

if [ "$#" -lt 2 ]; then
    echo "사용법: $0 인자1 인자2 [추가 인자들...]"
    exit 1
fi

echo "[쉘] runner.py 실행 시작"
./runner.py "$@"
echo "[쉘] runner.py 실행 종료"
