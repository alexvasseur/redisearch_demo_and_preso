FROM ubuntu:22.04

RUN apt-get update -y && \
    apt-get install -y python3-dev git curl

COPY ./requirements.txt /app/requirements.txt

WORKDIR /app

RUN curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
RUN python3 get-pip.py
RUN pip3 install pipenv

RUN export LC_ALL=C.UTF-8; export LANG=C.UTF-8; pipenv install -r requirements.txt
#COPY Pipfile Pipfile.lock ./
#RUN pipenv run python3 -m pip install setuptools
RUN pipenv install --dev --system --deploy

COPY . /app

ENTRYPOINT [ "python3" ]

CMD [ "app.py" ]
