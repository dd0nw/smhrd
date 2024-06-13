import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class Ex02Animatedtext extends StatelessWidget {
  const Ex02Animatedtext({super.key});

  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.purple,
      Colors.blue,
      Colors.yellow,
      Colors.red,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 50.0,
      fontFamily: 'Horizon',
    );

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: 250.0,
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  '반갑습니다',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  '즐거운 목요일이군요~',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  '오늘도 파이팅!',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              onTap: () {
                print("Tap Event");
              },
            ),
          ),
        ),
      ),
    );
  }
}
