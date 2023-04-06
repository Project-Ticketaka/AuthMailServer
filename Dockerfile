FROM python:3.9.0-slim

COPY requirements.txt .
RUN pip install -r requirements.txt
COPY . ./AuthMailServer

CMD ["python", "./MailServer/auth_consumer_mail.py"]