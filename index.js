'use strict';

const PORT = 8000;
const fs = require('fs');
const http = require('http');
const path = require('path');

const handler = (req, res) => {
  console.log(`Got request!`);
  fs.createReadStream(path.join(__dirname, 'index.html')).pipe(res);
};

const server = http.createServer(handler);

server.listen(8000, () => {
  console.log(`Server listening on port ${PORT}`);
});