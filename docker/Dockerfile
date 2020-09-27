FROM node:12.16.3

RUN apt install curl

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt update && \
    apt install yarn

COPY package.json ./
COPY yarn.lock ./

COPY . .

EXPOSE 3000

RUN yarn install --no-lockfile

CMD [ "yarn", "start" ]