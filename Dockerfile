FROM node:14.18.2
RUN apt-get update -y && apt-get install net-tools -y
WORKDIR /medzgo-doctors-portal-v1
COPY package*.json ./
RUN npm install
COPY . .
CMD ["npm", "start"]
