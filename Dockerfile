FROM node:20-alpine

WORKDIR /app

COPY . /app

RUN set -eux \
  && npm install --ignore-scripts \
  && npm run build:preview

EXPOSE 3001

CMD ["npm", "run", "preview"]
