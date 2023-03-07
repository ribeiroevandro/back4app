FROM node:18-alpine
WORKDIR /app

COPY package.json .

RUN npm i

COPY . .

# Build the React application
RUN npm run build

## EXPOSE [Port you mentioned in the vite.config file]
EXPOSE 5173
CMD ["npm", "run", "start"]
