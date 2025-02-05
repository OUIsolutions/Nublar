FROM alpine:latest

RUN apk update
RUN apk add --no-cache gcc musl-dev curl
CMD ["sh", "-c", "cd release && gcc nublar.c -o nublar.ou"]
