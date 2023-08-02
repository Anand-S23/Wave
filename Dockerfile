FROM node:18-alpine
RUN apk add --no-cache libc6-compat

WORKDIR /usr/src/wave

COPY package.json package-lock.json ./
RUN npm install

COPY . .

CMD ["npm", "run", "dev"]
