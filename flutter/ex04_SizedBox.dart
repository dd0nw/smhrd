import 'package:flutter/material.dart';

class ExsizedBox extends StatelessWidget {
  const ExsizedBox({super.key});

  // sizebox의 목적!
  // 1. child 위젯의 크기를 조정하기 위한 목적!
  // 2. 위젯들 사이의 공간을 추가하기 위한 목적!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.blue,
              child: Row(
                children: [
                  ElevatedButton(onPressed: () {}, child: Text('button1')),
                  ElevatedButton(onPressed: () {}, child: Text('button2')),
                ],
              ),
            ),

            Container(
              child: Row(
                children: [
                  Text('첫번째 텍스트'),

                  SizedBox(
                    width: 100,
                    height: 100,
                    child: Container(
                      color: Colors.red,
                    ),

                  ),

                  Text('두번째 텍스트'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ExsizedBox(),
  ));
}
