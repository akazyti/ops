FROM alpine
WORKDIR /app

RUN mkdir www && echo "<h1> mongoose ! </h1>" >> www/index.html
COPY mongoose /app

RUN chmod +x mongoose
EXPOSE 80

CMD ./mongoose -a logs -d www -g yes -l http://0.0.0.0:80
