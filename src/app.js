const http = require('http');

const hostname = '0.0.0.0';
const port = 3000;

require('dotenv').config()

const server = http.createServer((req, res) => {
  res.statusCode = 200;
  res.setHeader('Content-Type', 'text/plain');
  res.end(`Hello World!\n${process.env.SECRET}`);
});

server.listen(port, hostname, () => {
  console.log(`Server running at http://${hostname}:${port}/`);
});