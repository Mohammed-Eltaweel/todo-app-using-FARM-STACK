FROM python:3.10.17-alpine3.21

WORKDIR /app

COPY . . 

RUN pip install -r requirements.txt 

EXPOSE 8000

CMD ["fastapi", "dev", "main.py", "--host", "0.0.0.0", "--port", "8000"]



