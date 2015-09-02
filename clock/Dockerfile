FROM python:2.7 
MAINTAINER Youcef Yekhlef <yyekhlef@gmail.com>
ADD . /code
WORKDIR /code
RUN pip install -r requirements.txt
EXPOSE 5000
CMD python app.py
