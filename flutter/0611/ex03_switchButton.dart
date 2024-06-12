import 'package:flutter/material.dart';

class ExSwitch extends StatefulWidget {
  const ExSwitch({super.key});

  @override
  State<ExSwitch> createState() => _ExSwitchState();
}

class _ExSwitchState extends State<ExSwitch> {

  bool isOn = true;
  List<bool> isOnList = [false, false];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('알람 끄기', style: TextStyle(fontSize: 30),),
                Switch(value: isOnList[0], onChanged: (value){
                  setState(() {
                    isOnList[0] =value!;
                  });
                }),
              ],
            ),
            SwitchListTile(
                title: Text('자동 밝기 끄기'),
                value: isOnList[1], onChanged: (value){
              setState(() {
                isOnList[1] = value!;
              });
            },
            activeColor: Colors.blue,),
          ],
        ),
      ),
    );
  }
}
