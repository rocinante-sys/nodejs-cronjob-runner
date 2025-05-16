FROM node:20-slim

WORKDIR /usr/src/app

COPY gitCheckout.sh .
RUN chmod +x gitCheckout.sh

CMD [ "./gitCheckout.sh" ]
