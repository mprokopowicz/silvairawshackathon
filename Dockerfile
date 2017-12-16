FROM node:9-alpine
ADD index.html .
ADD index.js .
CMD node index.js