# start by pulling the python image
FROM python:3.8-alpine

# create and set working directory
RUN mkdir /app
WORKDIR /app

# Add current directory code to working directory
ADD ./ /app/
COPY  ./requirements.txt /app/

ENV PORT 5000
# install the dependencies and packages in the requirements file
RUN pip3 install -r requirements.txt

# configure the container to run in an executed manner

CMD ["python3", "app.py"]