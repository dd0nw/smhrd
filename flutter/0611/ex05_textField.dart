import 'package:flutter/material.dart';

class ExText extends StatefulWidget {
  const ExText({super.key});

  @override
  State<ExText> createState() => _ExTextState();
}

class _ExTextState extends State<ExText> {

  // 텍스트 필드의 값을 가져올 수 있는 controller 생성
  // => 각각의 필드를 따로 관리하기 위하여 텍스트필드의 갯수만큼 생성!
  TextEditingController emailCon = TextEditingController();
  TextEditingController pwCon = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                keyboardType: TextInputType.emailAddress,
                // TextField 꾸미기
                decoration: InputDecoration(
                  label: Icon(Icons.supervised_user_circle),
                  hintText: 'email을 입력해주세요.', // Text 위젯을 사용하지 않아도 문자가 들어간다
                  hintStyle: TextStyle(color: Colors.grey[300]),
                ),
                controller: emailCon,
              ),

              TextField(
                // keyboardType: TextInputType.text,
                obscureText: true, // 입력된 값들을 * 표시!
                decoration: InputDecoration(
                  label: Icon(Icons.password),
                  hintText: '비밀번호를 입력하세요.',
                  hintStyle: TextStyle(color: Colors.grey[400]),
                ),
                controller: pwCon,
              ),
              SizedBox(height: 30,),

              ElevatedButton(onPressed: (){
                // 버튼이 눌리면 텍스트 필드에 입려된 내용들 가져오기!
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(content: Text('${emailCon.text} / ${pwCon.text}')),

                String email = emailCon.text;
                print(email);

                // 서버를 통하여 해당 데이터를 디비에 전달
                // => 디비에 있는 값을 체크하고 결과를 다시 돌려 받는다
                // => 결과 값에 따라 화면이동 / 현 화면 유지


              }, child: Text('login'))
            ],
          ),
        ),
      ),
    );
  }
}
