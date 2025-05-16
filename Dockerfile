FROM node:20-slim

WORKDIR /usr/src/app

RUN apt-get update \
  && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/*

COPY gitCheckout.sh .
RUN chmod +x gitCheckout.sh

CMD [ "./gitCheckout.sh" ]
