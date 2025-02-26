FROM python:3.8 AS base

# Maintainer
LABEL maintainer="Pablo Santa Cruz <pablo@roshka.com.py>"

WORKDIR /bot

# Install requirements
COPY requirements.txt /bot
RUN pip install -r /bot/requirements.txt

# Copy application
COPY . .

# run telegram bot
CMD ["python", "bot.py"]

