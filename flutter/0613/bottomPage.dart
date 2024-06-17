import 'package:flutter/material.dart';

class BottomPage extends StatefulWidget {
  const BottomPage({super.key});

  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {

  int index = 0; // 화면을 관리하기 위한 인덱스 변수!
  List<Widget> pageList = [Home(), Chat(), Setting()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      // [
      //   Center(
      //     child: Text('home 화면'),
      //   ),
      //
      //   Center(
      //     child: Text('chat 화면'),
      //   ),
      //
      //   Center(
      //     child: Text('setting 화면'),
      //   ),
      // ][index],
      pageList[index],

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: index,

        // 여러개의 화면과 bottom 버튼 연결하기
        onTap: onItemTap, // 아이템이 선택됏을때 진행할 메소드 연결!

        // items : 여러개의 버튼을 관리할 수 있는 요소!
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'chat'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'setting'),
        ],

        // 라벨에 대한 스타일 지정!
        showSelectedLabels: false,
        showUnselectedLabels: false,

        // bottom 영역 스타일 지정!
        backgroundColor: Colors.lightGreen,
        selectedItemColor: Colors.pinkAccent,
        unselectedItemColor: Colors.white,

      ),
    );
  }
  void onItemTap(int i){
    setState((){
      index = i;

    });
  }
}
// 각각의 버튼 클릭시 띄워질 화면 설계! => 클래스로 생성 후 관리
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('home')),
    );
  }
}

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('chat')),
    );
  }
}

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('setting')),
    );
  }
}