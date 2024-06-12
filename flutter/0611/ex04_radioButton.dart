import 'package:flutter/material.dart';

// stl -> 디자인 위주, 간단한 로직
// stf -> setState(), 상태가 변화하거나 화면에 이동이 있을 경우

class ExRadio extends StatefulWidget {
  const ExRadio({super.key});

  @override
  State<ExRadio> createState() => _ExRadioState();
}

// Radio 버튼 사용시 필수사항!
// 버튼들의 그룹을 먼저 지정! => 열거형(enum)으로 지정!
// +) 열거시 클래스의 구조 안이나, 메소드의 구조 안에서 열거가 불가능하다!

enum Gender {man, woman}

class _ExRadioState extends State<ExRadio> {

  // 라디오 버튼이 선택된 값을 관리할 수 있는 변수
  Gender g = Gender.man;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // groupValue : 현재 선택된 값을 의미하는 내용 !
            Row(
              children: [
                Radio(value: Gender.man, groupValue: g, onChanged: (value){
                  setState(() {
                    g=value!;

                  });
                }),
                Text('남성'),
              ],
            ),
            Row(
              children: [
                Radio(value: Gender.woman, groupValue: g, onChanged: (value){
                  setState(() {
                    g=value!;

                  });
                }),
                Text('여성'),
              ],
            ),
            RadioListTile(
                title: Text('남성'),
                value: Gender.man, groupValue: g, onChanged: (value){
              setState(() {
                g=value!;
              });
            }),
            RadioListTile(
                title: Text('여성'),
                value: Gender.woman, groupValue: g, onChanged: (value){
              setState(() {
                g=value!;
              });
            }),
          ],
        ),
      ),
    );
  }
}
