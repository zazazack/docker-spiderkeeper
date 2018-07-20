FROM python:3


WORKDIR /usr/src
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
EXPOSE 5000

CMD ["spiderkeeper", "--verbose", "--server=http://scrapyd:6800"]
