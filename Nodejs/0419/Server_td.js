const http = require('http')
const url = require('url')

http.createServer(function(request, response){
    // 입력한 열 개수 꺼내오기
    let query = url.parse(request.url, true).query

    // {colNum : 15}

    response.write("<table>")
    response.write("<tr>")

    for(let i=0; i<query.colNum; i++){
        response.write("<td>"+(i+1)+"</td>")
    }


    response.write("</tr>")
    response.write("</table>")

    response.end();

}).listen(3004);