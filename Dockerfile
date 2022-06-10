FROM nginx:1.22.0-alpine

RUN apk add bash
COPY start.sh /
RUN chmod +x /start.sh
ENV TITLE=Welcome
ENV COLOR=gray
EXPOSE 80

CMD [ "/start.sh" ]
