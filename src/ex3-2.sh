#!/bin/bash
# ex3-2.sh : y = 1/2 x^2  (실수, 여러 x 값)

echo "x 값들을 공백으로 구분해서 입력 (예: 1.2 3.5 -2):"
read -r line

if [ -z "$line" ]; then
    echo "최소 1개 이상 입력해야 함"
    exit 1
fi

echo "===== 결과 (y = 1/2 x^2) ====="

for x in $line; do
    y=$(echo "scale=4; 0.5 * $x * $x" | bc -l)
    echo "x = $x  -->  y = $y"
done
