FROM python:3.11
COPY ./ /imagen
WORKDIR /imagen
EXPOSE 8080
CMD ["python", "-m", "http.server", "8080"]
