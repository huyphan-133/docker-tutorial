FROM node:16

RUN npm install -g serve

RUN apt update && apt install xsel

WORKDIR /usr/src/app

COPY package* .

RUN npm install

COPY . .

ENV REACT_APP_BACKEND_URL=http://localhost:81/api

RUN npm run build

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]