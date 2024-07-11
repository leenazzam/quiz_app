import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_models.dart';
import 'package:quiz_app/pages/score_page.dart';

class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  int index = 0;
  bool show = false;
  int score = 0;
  String? selectedanswer;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
          child: show == false
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 60,
                    ),
                    Text(
                      QA[index].question,
                      textAlign: TextAlign.end,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(150, 14, 13, 13),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Answer and get points!',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(children: [
                      Text(
                        'Step ${index + 1}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                      Text(
                        ' of ${QA.length}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w300, fontSize: 16),
                      )
                    ]),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: double.infinity,
                      child: LinearProgressIndicator(
                        value: index / QA.length,
                        color: Colors.green,
                        backgroundColor: Color.fromARGB(255, 153, 240, 156),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: (QA[index].answers)
                          .map(
                            (answer) => Padding(
                              padding: const EdgeInsets.only(bottom: 16),
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    selectedanswer = answer['text'];
                                  });
                                },
                                child: Container(
                                  width: double.infinity,
                                  padding: const EdgeInsets.all(16),
                                  decoration: BoxDecoration(
                                    color: selectedanswer == answer['text']
                                        ? Colors.green
                                        : null,
                                    border: Border.all(
                                      color: Colors.grey.withOpacity(0.3),
                                    ),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        answer['icon'] as IconData,
                                        color: answer['icon'] == selectedanswer
                                            ? Colors.white
                                            : null,
                                      ),
                                      const SizedBox(
                                        width: 16,
                                      ),
                                      Text(
                                        answer['text'],
                                        style: TextStyle(
                                            color:
                                                answer['text'] == selectedanswer
                                                    ? Colors.white
                                                    : null,
                                            fontWeight:
                                                answer['text'] == selectedanswer
                                                    ? FontWeight.bold
                                                    : null),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    Center(
                      child: SizedBox(
                        child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              selectedanswer = null;
                            });
                          },
                          child: const Text('NONE'),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.green,
                              backgroundColor:
                                  Color.fromARGB(255, 211, 237, 220)),
                        ),
                      ),
                    ),
                    const Spacer(),
                    SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {
                            if (selectedanswer != null) {
                              if (selectedanswer == QA[index].correct) {
                                setState(() {
                                  score++;
                                });
                              }
                              if (index < QA.length - 1) {
                                setState(() {
                                  index++;
                                });
                              } else {
                                setState(() {
                                  show = true;
                                });
                              }
                              setState(() {
                                selectedanswer = null;
                              });
                            } else {
                              ScaffoldMessenger.of(context)
                                  .showSnackBar(const SnackBar(
                                content: Text("Please select an answer"),
                                duration: Duration(seconds: 1),
                                behavior: SnackBarBehavior.floating,
                              ));
                            }
                          },
                          child: Text('NEXT'),
                          style: ElevatedButton.styleFrom(
                              foregroundColor: Colors.white,
                              backgroundColor: Color.fromARGB(255, 9, 178, 23),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8))),
                        )),
                  ],
                )
              : ScorePage(
                  score: score,
                  onTap: () {
                    setState(() {
                      index = 0;
                      show = false;
                      score = 0;
                      selectedanswer = null;
                    });
                  }),
        ),
      ),
    );
  }
}
