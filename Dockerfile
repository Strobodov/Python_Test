FROM python:3.9

WORKDIR /app

COPY requirements.txt requirements.txt

RUN pip3 install --upgrade pip

RUN pip3 install -r requirements.txt

COPY hello.py /app/hello.py

ENV FLASK_APP=hello

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]