FROM node:7-onbuild

# Create app directory
RUN mkdir -p /var/www/app
WORKDIR /var/www/app

# Bundle app source
COPY . /var/www/app

# Install app dependencies
RUN npm install

COPY docker-entrypoint.sh /usr/local/bin/entrypoint

EXPOSE 80
ENTRYPOINT ["entrypoint"]
