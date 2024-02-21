#python app
#FROM python:3.7-slim

#WORKDIR /app

#ADD . /app

#RUN pip install --no-cache-dir -r requeriments.txt

#EXPOSE 80

#CMD ["python", "app.py"]

#JavaScript app
FROM node:14

WORKDIR /usr/src/app

COPY . .

RUN npm install

EXPOSE 80

CMD ["npm", "start"]
