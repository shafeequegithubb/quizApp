import 'package:chapter8_quizapp/dummyDb.dart';
import 'package:chapter8_quizapp/view/home_screen/home_scrren.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.rightanswercount});

  final int rightanswercount;

  @override
  Widget build(BuildContext context) {
    double percentage = rightanswercount * 100 / Dummydb.questions.length;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "  Result = $percentage %",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.blue)),
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: Text(
                  "Restart",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
