#!/bin/bash
# ex3-0.sh : MYENV 환경변수 실험

BASHRC="$HOME/.bashrc"

# 1) .bashrc에 MYENV 등록
if ! grep -q 'MYENV=' "$BASHRC"; then
    echo 'export MYENV="Hello Shell"' >> "$BASHRC"
    echo "[1] ~/.bashrc 에 MYENV 등록 완료"
else
    echo "[1] ~/.bashrc 에 이미 MYENV 가 있음"
fi

# 2) .bashrc 다시 읽어서 현재 셸에 적용
#    (로그아웃/로그인해도 유지되는지 확인 가능)
#    여기서는 바로 source 해서 확인
# shellcheck disable=SC1090
source "$BASHRC"

echo "[2] 현재 셸에서 MYENV 값:"
echo "MYENV = '$MYENV'"

# 3) 환경변수 해제 후 값 확인
unset MYENV
echo "[3] unset 이후 MYENV 값:"
echo "MYENV = '${MYENV:-<비어있음>}'"

echo
echo "※ 실습 팁"
echo " - 새 터미널을 열고 'echo \$MYENV' 치면 값이 유지되는지 볼 수 있음."
echo " - .bashrc에서 MYENV 줄 삭제 후 다시 터미널 열면 값이 사라짐."
