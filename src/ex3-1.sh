#!/bin/bash
# ex3-1.sh : 두 정수 인자로 사칙연산

if [ "$#" -ne 2 ]; then
    echo "사용법: $0 정수1 정수2"
    exit 1
fi

a="$1"
b="$2"

echo "입력값: a=$a, b=$b"

echo "덧셈  a + b = $((a + b))"
echo "뺄셈  a - b = $((a - b))"
echo "곱셈  a * b = $((a * b))"

if [ "$b" -ne 0 ]; then
    echo "나눗셈 a / b = $((a / b))  (정수 나눗셈)"
else
    echo "나눗셈 a / b = 불가 (0으로 나눌 수 없음)"
fi
