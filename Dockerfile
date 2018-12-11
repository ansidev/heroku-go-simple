FROM golang:alpine AS build-env
ADD ./src /src
RUN mkdir /dist
RUN go build -o /dist/app /src/app/app.go
RUN go build -o /dist/worker /src/worker/worker.go

# final stage
FROM alpine
WORKDIR /app
COPY --from=build-env /dist/app ./app
COPY --from=build-env /dist/worker ./worker
CMD ./app