#!/bin/bash
# ex3-5.sh : 내부 함수로 리눅스 명령어 실행 (ls 예시)

run_ls() {
    # "$@" → 함수에 들어온 인자 전체
    cmd="ls $*"
    echo "실행할 명령어: $cmd"
    eval "$cmd"
}

# 스크립트에 들어온 인자들을 전부 함수로 넘김
run_ls "$@"
