import 'package:flutter/material.dart';

void main() => runApp(const App());

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        appBar:  AppBar(
          leading:const Center(child:  Text("Logo"),
          ),
          centerTitle: true,
          title: const Text("Logo"),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10),
          child: QuizApp1(),
        ),
      ),
    );
  }
}

class QuizApp1 extends StatefulWidget {
  const QuizApp1({Key? key}) : super(key: key);

  @override
  _QuizApp1State createState() => _QuizApp1State();
}

class _QuizApp1State extends State<QuizApp1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Expanded(
          child: Center(
            child: Text(
              "Questions will be displayed here",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
