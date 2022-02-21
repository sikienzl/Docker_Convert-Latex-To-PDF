FROM alpine:latest

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.10/main" >> /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.10/community" >> /etc/apk/repositories

RUN apk update && apk add bash texmf-dist texlive texlive-full biber

COPY convert_latex_to_pdf.sh /usr/local/bin/convert_latex_to_pdf.sh

COPY entrypoint.sh /usr/local/bin/entrypoint.sh
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
