
From node:8.15.0
WORKDIR "/app"
COPY package.json .
RUN npm install
COPY . .
CMD ["npm", "run", "start"]
