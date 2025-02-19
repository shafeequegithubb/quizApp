import 'package:chapter8_quizapp/dummyDb.dart';
import 'package:chapter8_quizapp/view/home_screen/home_scrren.dart';
import 'package:flutter/material.dart';

class GetStartedScreen extends StatelessWidget {
  GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 6, 144, 174),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Hi Buddy!",
                    style: TextStyle(color: Colors.white, fontSize: 40),
                  ),
                  Text(
                    "Lets make this day productive",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              ),
              height: 300,
              color: Color.fromARGB(255, 6, 144, 174),
            ),
            Container(
                height: 510,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80),
                        topRight: Radius.circular(80)),
                    color: Colors.black87),
                child: GridView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        mainAxisExtent: 180,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => HomeScreen(),
                                ));
                          },
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  Dummydb.selectedScreen[index]["Menu"]
                                      .toString(),
                                  style: TextStyle(
                                      fontSize: 25, color: Colors.white),
                                )
                              ],
                            ),
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 50, 77, 100),

                                // image: DecorationImage(
                                //     fit: BoxFit.cover,
                                //     image: NetworkImage(Dummydb
                                //         .selectedScreen[index]["imagepath"]
                                //         .toString())),

                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(30),
                                    topLeft: Radius.circular(30))),
                            height: 70,
                          ),
                        )))
          ],
        ),
      ),
    );
  }
}
