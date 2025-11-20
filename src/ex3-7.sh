disk_usage() {
    echo "=== 디스크 사용량 ==="
    df -h
}

while true; do
    cat <<EOF
====================
1) 사용자 정보
2) CPU 사용률 확인
3) 메모리 사용량 확인
4) 디스크 사용량 확인
5) 종료
====================
EOF

    read -rp "선택(1-5): " m

    case "$m" in
        1) user_info ;;
        2) cpu_usage ;;
        3) mem_usage ;;
        4) disk_usage ;;
        5) echo "종료"; break ;;
        *) echo "잘못된 입력" ;;
    esac
    echo
done
