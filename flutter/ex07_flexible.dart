import 'package:flutter/material.dart';

class flexible extends StatelessWidget {
  const flexible({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: 90,
          width: double.infinity,
          
          margin: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(10)
          ),


          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('아이유와 도미노를 더 맛있게',
                    style:TextStyle(fontWeight: FontWeight.bold)),
                    Text('도미노 매니아되고 ~40% 할인받자!'),
                  ],
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Image.asset('image/domino.png',)),
            ],
          ),
          ),
        ),
      );
  }
}
