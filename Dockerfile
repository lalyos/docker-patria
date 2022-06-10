FROM alpine:3.16.0

RUN apk add curl nginx bash

COPY start.sh /
RUN chmod +x /start.sh
ENV TITLE=Welcome
ENV COLOR=gray
EXPOSE 80

CMD [ "/start.sh" ]
