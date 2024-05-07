// router를 활용해서 파일의 경로를 지정해주기
const express = require("express");
const app = express();
const router = require("./routes/router")
// app 미들웨어에 사용하겠다고 등록!
app.use(router);
app.listen(3000);