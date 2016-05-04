

var azureConnection = "Endpoint=sb://epichubevents.servicebus.windows.net/;SharedSecretIssuer=owner;SharedSecretValue=CTrgf0r4oth1Zjk0qkJthQ7/QY0nAZswdb+DeU/xpVk=";
var queueName = "cloudcampqueue";
var counter = 0;
var date = new Date();
var port = process.env.port || 1337;
var colors = ['Red', 'Green', 'Blue', 'Gray', 'Yellow', 'Cyan', 'Magenta', 'DarkYellow', 'DarkBlue', 'DarkGreen', 'DarkRed', 'DarkMagenta'];

var http = require('http');
var azure = require('azure');
var moment = require('moment');

var retryOperations = new azure.ExponentialRetryPolicyFilter();
var serviceBusService = azure.createServiceBusService(azureConnection).withFilter(retryOperations);
var queueOptions = {
    LockDuration: 'PT5M',
    DefaultMessageTimeToLive: 'PT1H'
}

serviceBusService.createQueueIfNotExists(queueName, queueOptions, function(error) {
    if (!error) {
        console.log("Queue Created Successfully");
        startServer();
    } else {
        console.log(error);
    }
});

function startServer() {
    http.createServer(function (req, res) {

        if (req.url === '/favicon.ico') {
            console.log('favicon requested');
            createReponse(res);
            return;
        }

        for (var i = 0; i < 5; i++) {
            sendMessageToQueue();
        }
        
        createReponse(res);

    }).listen(port);
}

function sendMessageToQueue() {
    var index = ++counter;
    var message = {
        body: "Please Process Message #" + index,
        customProperties: {
            time: moment().format("HH:mm:ss.SSS"),
            index: index,
            color: colors[index % 10]
        }
    };
    serviceBusService.sendQueueMessage(queueName, message, function (error) {
        if (!error) {
            console.log("Message sent to queue");
        } else {
            console.log(error);
        }
    });
}

function createReponse(res) {
    res.writeHead(200, { 'Content-Type': 'text/html' });
    res.end('<h1>Publishing To Service Bus Queue From Nodejs<h1>' +
            '<b>Sent ' + counter + ' Messages</b>');
}

