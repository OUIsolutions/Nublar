FROM alpine:latest

RUN apk update
RUN apk add --no-cache gcc musl-dev curl
CMD ["sh", "-c", "cd release && gcc --static nublar.c -o nublar.out"]
