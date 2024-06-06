import 'package:flutter/material.dart';

class ExWidth extends StatelessWidget {
  const ExWidth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(

          // 실행 화면의 크기에 맞춰 넓이가 꽉 채워지는 Container 생성!
          width: double.infinity,
          height: 100,
          margin: EdgeInsets.all(10),
          
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(10)
          ),

        ),
      ),
    );
  }
}
