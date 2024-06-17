import 'package:flutter/material.dart';
import 'package:flutter0613/config/routeName.dart';

class RoutePage extends StatelessWidget {
  const RoutePage({super.key});

  // 라우팅 => 이름을 기준으로 경로를 연결하여 관리하는 기술!

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                Navigator.pushNamed(context, RouteName.redPage);
              }, child: Text('red')),

              ElevatedButton(onPressed: (){
                // Navigator.pushNamed(context, '/green');
                Navigator.pushNamed(context, RouteName.greenPage);
              }, child: Text('green')),

              ElevatedButton(onPressed: (){
                // Navigator.pushNamed(context, '/blue');
                Navigator.pushNamed(context, RouteName.bluePage);
              }, child: Text('blue')),
            ],
          ),
        ),
      ),
    );
  }
}
