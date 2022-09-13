FROM python:3.10.7-slim

RUN pip install -U pip==22.2.2

WORKDIR /app

COPY ./requirements.txt ./
RUN pip install -r requirements.txt

COPY ./test_numpy.py ./test_dummy.py ./setup.cfg ./

CMD ["mypy", "--verbose",  "--config-file", "setup.cfg", "."]
