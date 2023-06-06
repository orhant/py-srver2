FROM python:3.7-alpine
COPY . /app
WORKDIR /app
RUN pip install .
RUN py_srver2 create-db
RUN py_srver2 populate-db
RUN py_srver2 add-user -u admin -p admin
EXPOSE 5000
CMD ["py_srver2", "run"]
