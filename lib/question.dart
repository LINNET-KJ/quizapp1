import 'package:flutter/material.dart';
import 'package:quiz_app/qstns.dart';

class que extends StatefulWidget {
  const que({super.key});

  @override
  State<que> createState() => _queState();
}

class _queState extends State<que> {
  List question = [
    Quiz(qus: 'car have 4 wheels', ans: true),
    Quiz(qus: 'sydney is the capital of america', ans: false),
    Quiz(qus: 'blue is the colour of the sky', ans: true),
    Quiz(qus: 'india has 29 states', ans: false),
    Quiz(qus: 'keerthana is a bad girl', ans: true),
    Quiz(qus: 'diya is a good girl', ans: true),
    Quiz(qus: 'sana has car', ans: false),
    Quiz(qus: 'sana is a drop out student', ans: true),
    Quiz(qus: 'hamna is a singer', ans: true),
    Quiz(qus: 'lakshmi is a goddess', ans: false),
  ];
  int q_no = 0;
  String result='';
  void nextquestion() {
    if (q_no < question.length) {
      q_no++;
    }
  }

  void check(bool answer) {
    print(answer);
    if (answer == question[q_no].ans) {
      result='correct';
    } else {
      result='wrong';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 50,
            ),
            Text(
              question[q_no].qus,
              style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                  fontStyle: FontStyle.italic),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green.shade100,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      setState(() {
                        check(true);
                        nextquestion();

                      });
                    },
                    child: Text('true'))),
            SizedBox(
              height: 50,
            ),
            Container(
                height: 60,
                width: 300,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown,
                        foregroundColor: Colors.white),
                    onPressed: () {
                      setState(() {
                        check(false);
                        nextquestion();

                      });
                    },
                    child: Text('false'))),
            SizedBox(height: 20),
            Text(result,style: TextStyle(color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
