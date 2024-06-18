import 'package:flutter/material.dart';

// Grid를 생성하는 방식은 두가지 방식이 있다
// - count 방식 / extent 방식

// 1. Count 방식
class ExGridCount extends StatelessWidget {
  const ExGridCount({super.key});

  @override
  Widget build(BuildContext context) {

    var intList3 = List<int>.generate(30, (i) => i++);

    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              // crossAxisCount -> 하나의 축에 몇개의 데이터를 넣을지 지정하는 요소
                crossAxisCount: 2,
              childAspectRatio: 1/2, // 가로 / 세로
              crossAxisSpacing: 20, // 그리드 사이 간격 조절
              mainAxisSpacing: 20, // 축 사이의 간격 조절

            ),
            itemCount: intList3.length,
            itemBuilder: (context, index) =>
                Card(
                  child: Container(
                    color: Colors.blue[200],
                    child: Text('${intList3[index]}번째'),
                  ),

                ),

        ),
      ),
    );
  }
}


// 2. Extent 방식
class ExGridExtent extends StatelessWidget {
  const ExGridExtent({super.key});

  @override
  Widget build(BuildContext context) {

    var intList4 = List<int>.generate(30, (i) => i++);

    return Scaffold(
      body: SafeArea(
        child: GridView.builder(
            // 디바이스의 너비를 기준으로 배치하는 기능
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                // 디바이스 너비 / maxCrossAxisExtent(지정값) + 1만큼 그리드를 배치
                maxCrossAxisExtent: 100

            ),
            itemCount: intList4.length,
            itemBuilder: (context, index) =>
                Card(
                  child: Container(
                    color: Colors.pinkAccent[100],
                    child: Text('${intList4[index]}번째'),
                  ),
                )
        ),
      ),
    );
  }
}
