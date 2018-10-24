FROM python:3.6
WORKDIR /usr/src/app
COPY honkbot /usr/src/app/honkbot
RUN ls -al /usr/src/app
RUN ls -al /usr/src/app/honkbot
RUN pip3 install -r honkbot/requirements.txt && pip3 install boto3
CMD [ "python3", "./honkbot/honkbot.py" ]
