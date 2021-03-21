FROM alpine:3.13.2

RUN apk add yarn npm openjdk11 firefox-esr chromium chromium-chromedriver ttf-freefont

RUN npm install typescript node-inspect -g

RUN mkdir -p /mnt/src
WORKDIR /mnt/src

COPY . ./

RUN yarn install
