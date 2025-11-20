for i in 1 2 3 4 5; do
    fname="file${i}.txt"
    echo "This is file $i" > "$fname"
done

# 3) 5개 파일 압축 (tar.gz)
echo "[3] 5개 파일을 db_files.tar.gz 로 압축"
tar czf db_files.tar.gz file1.txt file2.txt file3.txt file4.txt file5.txt

cd .. || exit 1

# 4) train 폴더 생성 + 링크
if [ ! -d "./train" ]; then
    echo "[4] train 폴더 생성"
    mkdir train
fi

echo "[5] train 안에 DB 파일 5개에 대한 심볼릭 링크 생성"

for i in 1 2 3 4 5; do
    src="../DB/file${i}.txt"
    dst="file${i}.txt"
    # 이미 링크 있으면 삭제 후 다시
    [ -L "train/$dst" ] && rm "train/$dst"
    ln -s "$src" "train/$dst"
done

echo "완료."
