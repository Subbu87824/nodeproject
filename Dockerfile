FROM node:latest
WORKDIR /node project
ADD . .
RUN npm install
CMD ["node","app.js"]
