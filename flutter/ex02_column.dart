import 'package:flutter/material.dart';

class ExColumn extends StatelessWidget {
  const ExColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(),
            // 다양한 버튼 사용해 보기!
            TextButton(onPressed: (){}, child: Text('전송')),
            ElevatedButton(onPressed: (){}, child: Text('전송')),

          ],
        ),
      ),
    );
  }
}
