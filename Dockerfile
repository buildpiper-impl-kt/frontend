FROM node:16.15.1

COPY . /app

WORKDIR /app/

RUN npm install 

RUN npm run build

RUN yarn global add serve

EXPOSE 3000

ENTRYPOINT ["serve", "-s", "build"]
