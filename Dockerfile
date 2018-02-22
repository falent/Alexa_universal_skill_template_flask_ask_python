FROM python:2

WORKDIR /skill/

COPY requirements.txt /skill/requirements.txt
COPY ngrok /skill/ngrok
RUN pip install --no-cache-dir -r requirements.txt
WORKDIR /skill/

EXPOSE 5000
EXPOSE 27017
COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

