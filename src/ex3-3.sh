if [ "$s" -ge 90 ]; then
        grade="A"
    else
        grade="B"
    fi

    echo "점수 $s → 등급 $grade"

    sum=$((sum + s))
    cnt=$((cnt + 1))
done

if [ "$cnt" -eq 0 ]; then
    echo "유효한 점수가 없음"
    exit 1
fi

avg=$((sum / cnt))

if [ "$avg" -ge 90 ]; then
    avg_grade="A"
else
    avg_grade="B"
fi

echo "====================="
echo "평균 점수 = $avg"
echo "평균 등급 = $avg_grade"
