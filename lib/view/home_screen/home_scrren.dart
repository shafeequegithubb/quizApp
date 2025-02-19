import 'dart:math';

import 'package:chapter8_quizapp/dummyDb.dart';
import 'package:flutter/material.dart';

class HomeScrren extends StatefulWidget {
  const HomeScrren({super.key});

  @override
  State<HomeScrren> createState() => _HomeScrrenState();
}

class _HomeScrrenState extends State<HomeScrren> {
  Color getcolor(int index) {
    if (selectedIndex != null) {
      if (Dummydb.questions[currentIndex]["answer index"] == selectedIndex &&
          index == selectedIndex) {
        return Colors.green;
      } else if (Dummydb.questions[currentIndex]["answer index"] !=
              selectedIndex &&
          index == selectedIndex) {
        return Colors.red;
      } else if (Dummydb.questions[currentIndex]["answer index"] == index) {
        return Colors.green;
      }
    }

    return Colors.grey;
  }

  int currentIndex = 0;
  int? selectedIndex;
  int? count;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          actions: [
            Container(
              color: Colors.white,
              child: Text(
                '${currentIndex + 1}/${Dummydb.questions.length}',
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 60),
            child: Column(
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
                      Dummydb.questions[currentIndex]["question"].toString(),
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
                  List optionss =
                      Dummydb.questions[currentIndex]["options"] as List;
                  return optionscard(
                      bordercolor: getcolor(index),
                      onTap: () {
                        if (selectedIndex == null) {
                          selectedIndex = index;
                          setState(() {});
                          if (index ==
                              Dummydb.questions[currentIndex]["answer index"]) {
                            print("right answer");
                          } else {
                            print("WrongAnswer");
                          }
                        }
                      },
                      options: optionss[index]);
                })),
                SizedBox(
                  height: 15,
                ),
                InkWell(
                  onTap: () {
                    selectedIndex = null;
                    if (currentIndex < Dummydb.questions.length - 1) {
                      print(currentIndex);
                      currentIndex++;
                    }

                    setState(() {});
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.blue),
                    child: Center(
                      child: Text(
                        "next",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class optionscard extends StatelessWidget {
  const optionscard(
      {super.key,
      required this.options,
      this.answerIndex,
      this.onTap,
      required this.bordercolor});
  final String options;
  final answerIndex;
  final void Function()? onTap;
  final Color? bordercolor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            width: double.infinity,
            decoration: BoxDecoration(
              border:
                  Border.all(width: sqrt1_2, color: bordercolor ?? Colors.grey),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    options,
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
        ],
      ),
    );
  }
}
