import 'package:flutter/material.dart';

class ExImage extends StatelessWidget {
  const ExImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.asset('image/nezco1.jpg', width: 150, height: 150,),
            Text('gd'),
            Image.asset('image/nezco2.jpg', width: 150, height: 150,),
            Text('dd'),
          ],
        ),
      ),
    );
  }
}
