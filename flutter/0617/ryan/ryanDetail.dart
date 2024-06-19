import 'package:flutter/material.dart';
import 'package:flutter0617/ryan/ryanModel.dart';

class RyanDetail extends StatelessWidget {
  // const RyanDetail({super.key, required this.title, required this.img, required this.numberName});
  // ryan listview에서 ryanDetail로 넘어올 때 가지고 와야 하는 데이터

  const RyanDetail({required this.r});

  // final String title;
  // final String img;
  // final String numberName;

  final Ryan r;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(r.numberName),), // 나중에 실제 들어온 데이터로 수정
      body: Center(
        child: Column(
          children: [
            Image.asset(r.img), // 나중에 실제 들어온 데이터로 수정
            SizedBox(width: 10,),
            Text(r.title, style: TextStyle(fontSize: 24,),), // 나중에 실제 들어온 데이터로 수정
          ],
        ),
      ),

    );
  }
}
