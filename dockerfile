FROM python:3.8-slim-buster

WORKDIR /app

COPY reqire.txt reqire.txt
RUN pip3 install -r reqire.txt

COPY . .
CMD [ "python3" , "-m" , "flask", "run", "--host=0.0.0.0"  ]