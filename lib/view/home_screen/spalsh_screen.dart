import 'package:chapter8_quizapp/utils/constants/animation_constatnts.dart';
import 'package:chapter8_quizapp/utils/constants/color_constants.dart';
import 'package:chapter8_quizapp/view/home_screen/get_started_screen.dart';
import 'package:chapter8_quizapp/view/home_screen/home_scrren.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SpalshScreen extends StatefulWidget {
  const SpalshScreen({super.key});

  @override
  State<SpalshScreen> createState() => _SpalshScreenState();
}

class _SpalshScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then(
      (value) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => GetStartedScreen()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.colormainBlack,
      body: Center(
        child: Lottie.asset(AnimationConstatnts.Splashanimation),
      ),
    );
  }
}
