FROM node:20

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# VOLUME ["/app/node_modules"]

ENV PORT=80

EXPOSE $PORT

CMD ["npm", "start"]