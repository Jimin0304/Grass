import random

SOURCE_FILE = '/home/ubuntu/homework/grass-bot/long_text.txt'  # 긴 코드가 있는 파일
TARGET_FILE = '/home/ubuntu/homework/grass-bot/commit_target.py'  # 매번 커밋될 파일

# 긴 코드 전체 읽기
with open(SOURCE_FILE, 'r') as src:
    lines = src.readlines()

# 한 줄 랜덤 추출
random_line = random.choice(lines)

# 대상 파일에 한 줄 추가
with open(TARGET_FILE, 'a') as tgt:
    tgt.write(random_line + '\n')
