// router를 활용해서 파일의 경로를 지정해주기
const express = require("express");
const app = express();
const router = express.Router();

// app 미들웨어에 사용하겠다고 등록!
app.use(router);

router.get("/", (req,res)=>{
    //main.html 파일을 호출
    res.sendFile(__dirname+"/public/main.html")

})

router.get("/baseball", (req,res)=>{
    res.sendFile(__dirname+"/public/baseball.html")
})

router.get("/soccer", (req,res)=>{
    res.sendFile(__dirname+"/public/soccer.html")
})

app.listen(3000);