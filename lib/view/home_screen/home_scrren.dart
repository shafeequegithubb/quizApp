import 'dart:math';

import 'package:chapter8_quizapp/dummyDb.dart';
import 'package:flutter/material.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({super.key});

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  int currentQuestionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey.shade800),
              child: Text(
                Dummydb.questions[currentQuestionIndex]["question"].toString(),
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: List.generate(4, (index) {
              List answerOption =
                  Dummydb.questions[currentQuestionIndex]["options"] as List;

              return optionscard(
                  borderColor: Colors.grey,
                  onTap: () {
                    if (index ==
                        Dummydb.questions[currentQuestionIndex]
                            ["answer index"]) {
                      print("right answer");
                    } else {
                      print("wrong answer");
                    }
                  },
                  option: answerOption[index]);
            }),
          ),
          SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: () {
              if (currentQuestionIndex < Dummydb.questions.length - 1) {
                currentQuestionIndex++;
                print(currentQuestionIndex);
                setState(() {});
              }
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15), color: Colors.blue),
              child: Center(
                child: Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class optionscard extends StatelessWidget {
  const optionscard(
      {super.key, required this.option, this.onTap, this.borderColor});
  final String option;
  final void Function()? onTap;
  final Color? borderColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border.all(width: sqrt1_2, color: Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    option,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.radio_button_off,
                  color: Colors.white,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
