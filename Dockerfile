FROM busybox

COPY ./bin/dart-http-server /dart-http-server

CMD ["/dart-http-server"]
