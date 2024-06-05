// 디자인을 할 수 있는 클래스 생성!
import 'package:flutter/material.dart';

class ExIcon extends StatelessWidget {
  const ExIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( // 기본구조 : appBar, body, bottom navigation
      body: SafeArea( // 실행 시 상태바를 제외한 영역을 안전하게 body영역으로 잡아준다!
        child: Row(
          children: [
            Text('android 아이콘 사용하기',
              style:TextStyle(fontSize:25),), // Text의 크기를 35로 수정해 보자!
              Icon(Icons.adb,
                   color: Colors.blue,
                   size:40,),
            // IconButton()의 경우 required에 대한 요소들은 필수적으로 지정해야한다!
            // onPressed : 버튼 클릭시 어떤 진행을 할것인지
            // icon : 어떤 아이콘을 버튼으로 사용할 것인지
            IconButton(onPressed: (){
              print('버튼 클릭!');
            }, icon: Icon(Icons.add)),
            
          ],

        ),
      ),
    );
  }
}
