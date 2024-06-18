import 'package:flutter/material.dart';

class ExHorizontal extends StatelessWidget {
  const ExHorizontal({super.key});

  // 1. 리스트뷰의 데이터 생성
  // 2. 리스트뷰 디자인 생성
  // - 필수요소 체크하기!
  // - 화면 실행 시 발생되는 오류 해결하기!

  @override
  Widget build(BuildContext context) {

    var intList2 = List<int>.generate(50, (i) => i++);

    return Scaffold(
      body: SafeArea(
        child: ListView.builder(

          scrollDirection: Axis.horizontal,

          itemCount: intList2.length,
          itemBuilder: (context, index) =>
              Center(
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.all(4),
              color: Colors.grey[300],
              child: Text('${intList2[index]}'),
            ),
          ),
        ),
      ),
    );
  }
}
