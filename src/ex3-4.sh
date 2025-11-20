done
    avg=$(echo "scale=2; $total / ${#scores[@]}" | bc -l)
    echo "평균 GPA = $avg"
}

while true; do
    cat <<EOF
====================
1) 과목 성적 추가
2) 입력된 모든 점수 보기
3) 평균 점수 확인
4) 평균 등급(GPA) 변환
5) 종료
====================
EOF

    read -rp "메뉴 선택(1-5): " menu

    case "$menu" in
        1) add_score ;;
        2) show_all ;;
        3) show_avg_score ;;
        4) show_avg_gpa ;;
        5) echo "종료"; break ;;
        *) echo "잘못된 입력" ;;
    esac
    echo
done
