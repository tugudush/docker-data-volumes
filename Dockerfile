FROM node:20

WORKDIR /app

COPY package.json .

RUN npm install

COPY . .

# VOLUME ["/app/node_modules"]

ARG DEFAULT_PORT=80

ENV PORT=${DEFAULT_PORT}

#ENV PORT=80

EXPOSE ${PORT}

CMD ["npm", "start"]