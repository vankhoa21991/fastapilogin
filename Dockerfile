
FROM        python:3.8-alpine

RUN         ping -c 3 google.com
ENV         PYTHONUNBUFFERED=1

WORKDIR     /home

COPY        ./requirements.txt .

COPY        . .

RUN         pip install --no-cache-dir -r requirements.txt 

EXPOSE      8093

CMD         ["uvicorn", "main:app", "--port", "8093", "--host", "0.0.0.0"]
