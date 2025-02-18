# Python 3.10 경량 이미지 사용
FROM python:3.11-slim

# 작업 디렉토리 설정
WORKDIR /usr/src/app

# Python 의존성 복사 & 설치
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# 애플리케이션 코드 복사
COPY ./ /usr/src/app/

# FastAPI 실행 (Uvicorn 사용)
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]

EXPOSE 8000
