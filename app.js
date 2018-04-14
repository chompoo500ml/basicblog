var express = require('express');
var path = require('path');

var app = express();

app.use(express.static(path.join(__dirname, 'chompoo500ml-github-io')));

app.use('/hello', (req, res) => res.send('Hello World!'));

module.exports = app;
//app.listen(9090, () => console.log('listening on port 9090'))