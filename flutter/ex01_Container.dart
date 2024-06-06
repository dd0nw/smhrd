import 'package:flutter/material.dart';

class ExContainer extends StatelessWidget {
  const ExContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          // Container 생성시 크기는 body의 영역만큼 생성이 된다!
          // color: Colors.pinkAccent,
          // Container 크기 지정하기
          width: 200,
          height: 200,

          // Container 내부 정렬 지정하기!
          alignment: Alignment.center, // Text()에 사용한 Center()과 같은 기능!

          // magin, padding 사용하기
          // margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
          margin: EdgeInsets.all(15),
          padding: EdgeInsets.all(50),

          // Container 테두리 사용하기
          // Container 요소에서 사용되는 color는 decoration 요소와 함께 쓰일 수 없다!
          // => 색상을 지정하고 싶다면 decoration 안에서 color 지정하기!
          decoration: BoxDecoration(
            color: Colors.pinkAccent,
            border: Border.all(
              color: Colors.black,
              width: 5, // 테두리 두께 설정!
            ),
            // Container의 모서리를 둥글게 만드는 요소!
            borderRadius:
            // BorderRadius.only(topLeft: Radius.circular(50))
            // BorderRadius.all(Radius.circular(50)),
            BorderRadius.circular(30),
          ),
          
          // Container안에 위젯을 추가하기 위한 하위 계층 생성!
          // => 글자가 가운데에 올 수 있도록 수정해보자
          // => Text()이 Center 위젯으로 감싸지면 해결!
          child: Text('Container',
            style: TextStyle(fontSize: 30),
            //textAlign : TextAlign.center, // 텍스트가 위치하고 있는 라인에서 가운데 정렬!
          ),

        ),
      ),
    );
  }
}
