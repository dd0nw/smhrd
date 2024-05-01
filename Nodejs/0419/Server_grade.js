const http = require('http');
const url = require('url');
const qs = require('querystring')

http.createServer(function(request, response){
    let body = ''

    request.on("data", function(data){
        body+=data
        console.log(body);
    })

    request.on('end', function(){
        let 

        response.end();
    })



}).listen(3006);