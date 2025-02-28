FROM node:16-alpine

RUN apt-get install -y libpq-dev \
    && docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql \
    && docker-php-ext-install pdo pdo_pgsql pgsql

WORKDIR /app

COPY package.json /app

RUN npm install

COPY . /app

CMD [ "npm", "run", "dev" ]