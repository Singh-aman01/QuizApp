import 'package:flutter/material.dart';




class QuizApp1 extends StatefulWidget {
  const QuizApp1({Key? key}) : super(key: key);

  @override
  _QuizApp1State createState() => _QuizApp1State();
}

class _QuizApp1State extends State<QuizApp1> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Expanded(
          flex: 5,
          child: Center(
            child: Text(
              "Questions will  be displayed here",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: () {},
            child: const Text("button 1"),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            onPressed: () {},
            child: const Text("button 1"),
          ),
        ),
      ],
    );
  }
}
