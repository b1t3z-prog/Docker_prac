FROM python:3.12.8

WORKDIR /app

# Отключаем буферизацию выводов Python, чтобы логи сразу шли в терминал
ENV PYTHONUNBUFFERED=1

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Запускаем uvicorn напрямую через CMD, минуя if __name__ == "__main__"
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8002"]
