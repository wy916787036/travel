FROM node:8.12
# RUN apt-get update \    && apt-get install -y nginx
FROM nginx:1.15.5
WORKDIR /app
COPY . /app/
EXPOSE 80
RUN  npm install \     && npm run build \     && cp -r dist/* /var/www/html \     && rm -rf /app
CMD ["nginx","-g","daemon off;"]