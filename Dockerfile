# Damn Vulnerable NodeJS Application

FROM node:18.20.2-bookworm-slim
LABEL MAINTAINER "Subash SN"

WORKDIR /app

COPY . .

RUN chmod +x /app/entrypoint.sh \
	&& npm install

CMD ["bash", "/app/entrypoint.sh"]