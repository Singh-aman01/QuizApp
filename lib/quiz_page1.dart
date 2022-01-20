import 'package:flutter/material.dart';

class QuizApp1 extends StatefulWidget {
  const QuizApp1({Key? key}) : super(key: key);

  @override
  _QuizApp1State createState() => _QuizApp1State();
}

class _QuizApp1State extends State<QuizApp1> {
  List<Widget> scoreKeeper = [];
  List<String> questions = [
    "shiva is always with you",
    "he will not always help you",
    "you're a noob",
    "i am pro",
  ];
  List<bool> answers = [true, false, false, true];
  late int questionNumber = 0;
   late bool ans ;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 12,
          child: Center(
            child: Text(
              questions[questionNumber],
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.green,
            ),
            onPressed: () {
              setState(() {
                ans=answers[questionNumber];
                if(ans == true){
                  scoreKeeper.add(
                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  );
                }else{
                  scoreKeeper.add(
                    const Icon(
                      Icons.cancel,
                      color: Colors.red,
                    ),
                  );
                }
                if (questionNumber <= 2) {
                  questionNumber++;
                }
              });
            },
            child: const Text("True"),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
            ),
            onPressed: () {
              setState(() {
                ans=answers[questionNumber];
                if(ans == false){
                  scoreKeeper.add(
                    const Icon(
                      Icons.check_circle,
                      color: Colors.green,
                    ),
                  );
                }else{
                  scoreKeeper.add(
                    const Icon(
                      Icons.cancel,
                      color: Colors.red,
                    ),
                  );
                }
                if (questionNumber <= 2) {
                  questionNumber++;
                }
              });
            },
            child: const Text("False"),
          ),
        ),
        Expanded(
          child: Row(
            children: scoreKeeper,
          ),
        ),
      ],
    );
  }
}
