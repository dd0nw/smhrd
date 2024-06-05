import 'package:flutter/material.dart';

class ExImage2 extends StatelessWidget {
  const ExImage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('첫번째 예제'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Row(

            // 연결시 위치를 어디로 잡아 줄 것인지 설정!
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Image.asset('image/nezco1.jpg', width: 120,height: 120,),
              Text('카마도 네즈코'),
            ],
        ),

    );
  }
}