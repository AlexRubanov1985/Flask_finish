FROM python:3.12

WORKDIR /app

COPY app/requirements.txt .

RUN pip install -r requirements.txt

ENV FLASK_APP="/app/app.py"
ENV FLASK_DEBUG=1

COPY .. .



CMD ["python", "-m" , "flask", "run", "--host=0.0.0.0", "--port=5000"]