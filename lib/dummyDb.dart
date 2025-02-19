import 'package:flutter/material.dart';

class Dummydb {
  static const questions = [
    {
      "question": "What is Flutter?",
      "options": [
        "A programming language",
        "A UI toolkit",
        "A database",
        "An operating system"
      ],
      "answer index": 1
    },
    {
      "question": "Which language is used to develop Flutter apps?",
      "options": ["Java", "Kotlin", "Dart", "Swift"],
      "answer index": 2
    },
    {
      "question": "What is the base class for Flutter widgets?",
      "options": [
        "StatefulWidget",
        "StatelessWidget",
        "Widget",
        "InheritedWidget"
      ],
      "answer index": 2
    },
    {
      "question":
          "Which widget is used to create a scrollable list in Flutter?",
      "options": ["Column", "ListView", "Row", "Stack"],
      "answer index": 1
    },
    {
      "question": "How do you define a constant variable in Dart?",
      "options": ["const", "var", "final", "static"],
      "answer index": 0
    },
    {
      "question": "Which function is the entry point of a Flutter application?",
      "options": ["main()", "runApp()", "initState()", "build()"],
      "answer index": 0
    },
    {
      "question": "Which widget is used to create a button in Flutter?",
      "options": ["Text", "Container", "ElevatedButton", "AppBar"],
      "answer index": 2
    },
    {
      "question": "What is the purpose of setState() in Flutter?",
      "options": [
        "To rebuild the UI with updated state",
        "To initialize state variables",
        "To navigate between screens",
        "To fetch data from an API"
      ],
      "answer index": 0
    },
    {
      "question": "Which widget is used to display an image in Flutter?",
      "options": ["Text", "Image", "Container", "Column"],
      "answer index": 1
    },
    {
      "question": "What does the async keyword indicate in Dart?",
      "options": [
        "It makes a function asynchronous",
        "It executes the function immediately",
        "It is used for error handling",
        "It is used for defining classes"
      ],
      "answer index": 0
    }
  ];

  static const selectedScreen = [
    {
      "color": Colors.purple,
      "Menu": "DART",
    },
    {
      "Menu": "FLUTTER",
      "color": Colors.yellow,
    },
    {
      "Menu": "PYTHON",
      "color": Colors.red,
    },
    {
      "Menu": "JAVA",
      "color": Colors.purple,
    }
  ];
}
