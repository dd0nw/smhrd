const http = require('http');

// 쿼리스트링 데이터 사용가능 모듈 : url
const url = require("url");

http.createServer(function(request, response){

    // 문자열로 된 쿼리스트링을 객체형식으로 변환
    let query = url.parse(request.url, true).query

    let num1 = parseInt(query.data1)
    let num2 = parseInt(query.data2)

    console.log(num1+num2)

    response.write(num1+"+"+num2+"="+(num1+num2));
    
    response.end();
}).listen(3003);

//http://localhost:3003

