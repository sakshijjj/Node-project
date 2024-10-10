FROM node:14 AS build
WORKDIR /app
COPY package*.json ./
COPY . .

FROM node:14-alpine
WORKDIR /app
COPY --from=build /app .
EXPOSE 3000
CMD ["npm", "start"]
