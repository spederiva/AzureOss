'use strict';

const express = require('express');

// Constants
const PORT = 8080;

// App
const app = express();
var os = require("os");


var hostname = os.hostname();
function getDateTime() {

    var date = new Date();

    var hour = date.getHours();
    hour = (hour < 10 ? "0" : "") + hour;

    var min  = date.getMinutes();
    min = (min < 10 ? "0" : "") + min;

    var sec  = date.getSeconds();
    sec = (sec < 10 ? "0" : "") + sec;

    var year = date.getFullYear();

    var month = date.getMonth() + 1;
    month = (month < 10 ? "0" : "") + month;

    var day  = date.getDate();
    day = (day < 10 ? "0" : "") + day;

    return year + ":" + month + ":" + day + ":" + hour + ":" + min + ":" + sec;

}


var counter = 0;
var result = "";
app.get('/', function (req, res) {
	counter ++;
	result = result + 'Hello SDP from  ' +  hostname +' - ' + counter + ' - '+ getDateTime() +'</br>';
  res.send(result);
});

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);