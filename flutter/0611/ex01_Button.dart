import 'package:flutter/material.dart';

class ExButton extends StatefulWidget {
  const ExButton({super.key});

  @override
  State<ExButton> createState() => _ExButtonState();
}

class _ExButtonState extends State<ExButton> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$count', style: TextStyle(fontSize: 30),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: (){
                setState(() {
                  count++;
                });
              }, child: Text('클릭'))
            ],
          ),
        ),
      ),
    );
  }
}
