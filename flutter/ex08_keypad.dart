import 'package:flutter/material.dart';

class Exkeypad extends StatelessWidget {
  const Exkeypad({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: TextButton(onPressed: (){}, child: Text('1', style: TextStyle(fontSize: 30),))),
                          Expanded(child: TextButton(onPressed: (){}, child: Text('2', style: TextStyle(fontSize: 30),))),
                          Expanded(child: TextButton(onPressed: (){}, child: Text('3', style: TextStyle(fontSize: 30),))),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: TextButton(onPressed: (){}, child: Text('4', style: TextStyle(fontSize: 30),))),
                          Expanded(child: TextButton(onPressed: (){}, child: Text('5', style: TextStyle(fontSize: 30),))),
                          Expanded(child: TextButton(onPressed: (){}, child: Text('6', style: TextStyle(fontSize: 30),))),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: TextButton(onPressed: (){}, child: Text('7', style: TextStyle(fontSize: 30),))),
                          Expanded(child: TextButton(onPressed: (){}, child: Text('8', style: TextStyle(fontSize: 30),))),
                          Expanded(child: TextButton(onPressed: (){}, child: Text('9', style: TextStyle(fontSize: 30),))),
                        ],
                      ),
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          Expanded(child: TextButton(onPressed: (){}, child: Text('*', style: TextStyle(fontSize: 30),))),
                          Expanded(child: TextButton(onPressed: (){}, child: Text('0', style: TextStyle(fontSize: 30),))),
                          Expanded(child: TextButton(onPressed: (){}, child: Text('#', style: TextStyle(fontSize: 30),))),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

            )
          ],
        ),
      ),
    );
  }
}
