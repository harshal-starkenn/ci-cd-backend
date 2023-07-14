FROM node:16

WORKDIR /app

COPY package.json ./

RUN npm install

COPY . .

EXPOSE 9001

ENV MONGODB_URL=mongodb://host.docker.internal:27017
ENV PORT=9001
ENV DATABASE=harshal

CMD ["npm","start"]