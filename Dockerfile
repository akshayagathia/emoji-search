
From node:8.15.0 as builder
WORKDIR "/app"
COPY package.json .
RUN npm install
COPY . .
EXPOSE 3000
RUN npm run build


FROM nginx
COPY --from=builder /app/built /usr/share/nginx/html
