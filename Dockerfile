FROM python:3.6
WORKDIR /usr/src/app
COPY honkbot/ ./
RUN pip3 install -r requirements.txt && pip3 install boto3
CMD [ "python3", "./honkbot.py" ]
