
FROM python:3.11-slim
LABEL org.opencontainers.image.source="https://github.com/keerthana-2905/student-result-ml-ci"

WORKDIR /app

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY student_result_model.pkl .
COPY metrics.json .

EXPOSE 5000

CMD ["python", "app.py"]
