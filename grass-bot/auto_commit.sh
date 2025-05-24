#!/bin/bash

# 현재 시간 기록용 변수
NOW=$(date '+%Y-%m-%d %H:%M:%S')
LOGFILE="/home/ubuntu/homework/grass-bot/commit_log.txt"

# 이동
cd /home/ubuntu/homework/grass-bot/ || exit

# 로그 시작
echo "[$NOW] ==== 자동 커밋 시작 ====" >> "$LOGFILE"

# 코드에 한 줄 추가
/usr/bin/python3 append_line.py >> "$LOGFILE" 2>&1

# Git add
echo "[$NOW] git add 실행" >> "$LOGFILE"
git add . >> "$LOGFILE" 2>&1

# Git commit
echo "[$NOW] git commit 실행" >> "$LOGFILE"
git commit -m "자동 커밋: $NOW" >> "$LOGFILE" 2>&1

# Git push
echo "[$NOW] git push 실행" >> "$LOGFILE"
git push origin main >> "$LOGFILE" 2>&1

# 로그 종료
echo "[$NOW] ==== 자동 커밋 완료 ====" >> "$LOGFILE"
echo "" >> "$LOGFILE"

