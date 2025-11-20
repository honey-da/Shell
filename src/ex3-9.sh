#!/bin/bash
# ex3-9.sh : 팀원/수행내용 DB 관리

DB_FILE="DB.txt"

add_member() {
    read -rp "이름: " name
    read -rp "생일 또는 전화번호: " info
    echo "MEMBER|$name|$info" >> "$DB_FILE"
    echo "등록 완료."
}

add_work() {
    read -rp "날짜(예: 2025-11-18): " date
    read -rp "수행 내용: " work
    echo "WORK|$date|$work" >> "$DB_FILE"
    echo "기록 완료."
}

search_member() {
    read -rp "검색할 이름: " name
    echo "=== 이름 '$name' 검색 결과 ==="
    grep "^MEMBER|$name|" "$DB_FILE" 2>/dev/null || echo "결과 없음."
}

search_work() {
    read -rp "검색할 날짜(예: 2025-11-18): " date
    echo "=== 날짜 '$date' 수행 내용 ==="
    grep "^WORK|$date|" "$DB_FILE" 2>/dev/null || echo "결과 없음."
}

while true; do
    cat <<EOF
====================
1) 팀원 정보 추가
2) 팀원과 한 일 기록
3) 팀원 검색
4) 수행 내용 검색
5) 종료
====================
EOF

    read -rp "선택(1-5): " m

    case "$m" in
        1) add_member ;;
        2) add_work ;;
        3) search_member ;;
        4) search_work ;;
        5) echo "종료"; break ;;
        *) echo "잘못된 입력" ;;
    esac
    echo
done
