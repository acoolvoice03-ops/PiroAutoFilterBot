# Don't Remove Credit @VJ_Bots
# Subscribe YouTube Channel For Amazing Bot @Tech_VJ
# Ask Doubt on telegram @KingVJ01

FROM python:3.10-slim-bookworm

# Install system deps
RUN apt-get update \
 && apt-get install -y --no-install-recommends git \
 && rm -rf /var/lib/apt/lists/*

# Python deps
COPY requirements.txt /requirements.txt
RUN pip3 install -U pip \
 && pip3 install --no-cache-dir -U -r /requirements.txt

# App
RUN mkdir /PiroAutoFilterBot
WORKDIR /PiroAutoFilterBot
COPY . /PiroAutoFilterBot

CMD ["python", "bot.py"]
