const http = require("http");
const fs = require("fs").promises;

http.createServer(async(req, res)=>{
    // 작업
    // 만약에 요청에서 들어온 경로가 -> soccer라면 -> soccer.html 리턴
    // 만약에 요청에서 들어온 경로가 -> baseball라면 -> baseball.html 리턴
    console.log(req.url);
    // 실습
    // req.url 값이 /soccer 랑 같다면 soccer.html 리턴
    // req.url 값이 /baseball 랑 같다면 baseball.html 리턴

    let data = ''
    if (req.url == ("/soccer.html")){
        data = await fs.readFile("/soccer.html");
    }else if (req.url == ("/baseball.html")){
        data = await fs.readFile("/baseball.html");

    }
    res.write(data);
    res.end();


}).listen(3000);