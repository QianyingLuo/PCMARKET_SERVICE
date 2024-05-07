FROM python:3.12-alpine
RUN apk update && apk add --no-cache --update git
RUN pip install pipenv
COPY Pipfile ./
RUN pipenv install
COPY . .
EXPOSE 8000
CMD ["pipenv", "run", "start"]