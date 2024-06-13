import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class Exonboarding extends StatefulWidget {
  const Exonboarding({super.key});

  @override
  State<Exonboarding> createState() => _ExonboardingState();
}

class _ExonboardingState extends State<Exonboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:  OnBoardingSlider(
          headerBackgroundColor: Colors.white,
          finishButtonText: 'Register',
          finishButtonStyle: FinishButtonStyle(
            backgroundColor: Colors.black,
          ),
          skipTextButton: Text('Skip'),
          trailing: Text('Login'),
          background: [
            Image.asset('image/img1.png', width: MediaQuery.of(context).size.width,),
            Image.asset('image/img2.png', width: MediaQuery.of(context).size.width,),
          ],
          totalPage: 2,
          speed: 1.8,
          pageBodies: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text('Description Text 1'),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text('Description Text 2'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
