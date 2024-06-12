import 'package:flutter/material.dart';

class ExLogin extends StatefulWidget {
  const ExLogin({super.key});

  @override
  State<ExLogin> createState() => _ExLoginState();
}

class _ExLoginState extends State<ExLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('로그인 화면', style: TextStyle(fontWeight: FontWeight.bold),)),
        backgroundColor: Colors.yellowAccent,
      ),
      body: GestureDetector(  // 화면에 대한 제스처를 감지할 수 있는 위젯!
        onTap: (){
          FocusScope.of(context).unfocus();
        },
        child: SingleChildScrollView( // 키보드 화면에 노출될 때 화면이 가려지는 오류를 막기 위한 위젯!
          child: Container(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            color: Colors.white,
            child: Center(
              child: Column(
                children: [
                  Image.asset(('image/img.gif')),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      label: Text('email 입력'),
                      hintText: 'example@example.com',
                      hintStyle: TextStyle(color: Colors.grey[300]),
                    ),
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      label: Text('비밀번호 입력'),
                    ),
                  ),

                  SizedBox(height: 50,),
                  ElevatedButton(onPressed: (){}, child: Text('로그인 하기'))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
