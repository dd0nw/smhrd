console.log("첫 노드 실행");

// node 기반으로 Backend 서버 만들기

// require : 모듈을 가져오는 기능
// http 모듈 : 클라이언트에서 요청을 받고 응답해주는(요청을 처리한다) 서버의 기본 모듈
const http = require("http");

// http.createServer : 서버생성 (클라이언트에서 접근할 수 있게끔 서버를 만들어준다)
http.createServer(function(request, response){
    // request : 요청 (클라이언트 -> 서버) 정보
    // response : 응답 (서버 -> 클라이언트)

    // 요청 정보 확인
    let ip = request.connection.remoteAddress
    console.log(ip)

    if(ip == "192.168.219.48"){
        response.write("<h1>응답성공</h1>")
    }else if(ip == "192.168.219.46"){
        response.write("<h1>선생님 환영합니다</h1>")
    }else{
        response.write("<h1>손님 환영합니다</h1>")
    }

    // call back 함수 : 특정 함수 안에서 호출되어 실행되어지는 함수 
    console.log("서버 실행 중 입니다")
    // 200 --> 정상 응답
    response.writeHead(200, {"Content-Type":"text/html; charset=utf-8"})
    response.write("<h1>응답성공</h1>")

    response.end(); // 여기까지 응답을 마무리 하겠다
}).listen(3001);
// .listen(3001) -> createServer 로 만들어진 사용자 임의서버를 3001 공간에 실행시키겠다

//URL : 해당하는 주소로 컴퓨터 서버에 연결하겠습니다.(요청을 보내겠습니다)
//http://localhost:3001
//http://127.0.0.1:3001
//http://192.168.219.48:3001