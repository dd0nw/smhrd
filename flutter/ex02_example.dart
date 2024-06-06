import 'dart:ui';

import 'package:flutter/material.dart';

class ExConexample extends StatelessWidget {
  const ExConexample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  decoration: BoxDecoration(
                    color:Colors.green[500],
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Icon(Icons.call,
                  color: Colors.white,
                  size: 80,),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  decoration: BoxDecoration(
                    color: Colors.red[500],
                    borderRadius: BorderRadius.circular(40)
                  ),
                  child: Icon(Icons.camera_alt_outlined,
                  color: Colors.white,
                  size: 80,),
                )
              ],
            ),
            Row(
              children: [
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  decoration: BoxDecoration(
                      color:Colors.blue[500],
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Icon(Icons.call,
                    color: Colors.white,
                    size: 80,),
                ),
                Container(
                  width: 120,
                  height: 120,
                  margin: EdgeInsets.fromLTRB(32, 32, 0, 0),
                  decoration: BoxDecoration(
                      color: Colors.red[500],
                      borderRadius: BorderRadius.circular(40)
                  ),
                  child: Icon(Icons.camera_alt_outlined,
                    color: Colors.white,
                    size: 80,),
                )
              ],
            ),
          ],
        ),


      ),
    );
  }
}
