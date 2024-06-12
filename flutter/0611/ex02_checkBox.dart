import 'package:flutter/material.dart';

class check extends StatefulWidget {
  const check({super.key});

  @override
  State<check> createState() => _checkState();
}

class _checkState extends State<check> {

  // 체크박스의 체크여부를 담을 수 있는 변수생성!
  bool isChecked = false;

  // 여러개의 체크여부를 한번에 관리할 수 있는 List 생성
  List<bool> isCheckedList = [false, false, false];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked=value!;
                  });
                }),
                Text('첫번째 체크박스'),
              ],
            ),

          //   value : 체크의 여부를 판단할 수 있는 요소!
          //   true -> O / false -> X
            Row(
              children: [
                Checkbox(value: isChecked, onChanged: (value){
                  setState(() {
                    isChecked=value!;
                  });
                }),
                Text('두번째 체크박스'),
              ],
            ),

            CheckboxListTile(
                title: Text('세번째 체크박스'),
                controlAffinity: ListTileControlAffinity.leading,
                value: isCheckedList[0], onChanged: (value){
                  setState(() {
                    isCheckedList[0]=value!;
                  });
            }),
            CheckboxListTile(
                title: Text('네번째 체크박스'),
                controlAffinity: ListTileControlAffinity.leading,
                value: isCheckedList[1], onChanged: (value){
                  setState(() {
                    isCheckedList[1]=value!;
                  });
            }),
            CheckboxListTile(
                title: Text('다섯번째 체크박스'),
                controlAffinity: ListTileControlAffinity.leading,
                value: isCheckedList[2], onChanged: (value){
                  setState(() {
                    isCheckedList[2]=value!;
                    
                    // 스낵바 생성!
                    // of(context) :

                    if(isCheckedList[2]==true){
                      ScaffoldMessenger.of(context).showSnackBar(
                        //   Snackbar() 위젯을 사용하여 띄우고자 하는 내용 연결
                        SnackBar(content: Text('다섯번째 체크박스')),
                      );
                    }
                  });
            }),



          ],
        ),
      ),
    );
  }
}
