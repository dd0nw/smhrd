import 'package:flutter/material.dart';

class popMainPage extends StatelessWidget {
  const popMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Main page'),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){

                Navigator.push(context, MaterialPageRoute(builder: (_) => pop2Page()));
                Navigator.pop(context);


              }, child: Text('다음 페이지')),
            ],
          ),
        ),
      ),
    );
  }
}

// pop2Page 추가!
class pop2Page extends StatelessWidget {
  const pop2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text('Sub page'),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){

                Navigator.pop(context);

              }, child: Text('다음 페이지')),
            ],
          ),
        ),
      ),
    );
  }
}

