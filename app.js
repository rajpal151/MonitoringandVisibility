const http = require('http');
const os = require('os');

const listenPort = 8080;

console.log('v1 Server starting on host '+os.hostname()+' port 
'+listenPort+'...');

const server = http.createServer((req, res) => {
  let clientIP = req.connection.remoteAddress;
  console.log('Processing request for '+req.url+' from '+clientIP);
  res.writeHead(200);
  res.end('Hello '+clientIP+', this is v1 on '+os.hostname()+'\n');
});

server.listen(listenPort);
