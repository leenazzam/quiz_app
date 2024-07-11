import 'package:flutter/material.dart';
import 'package:quiz_app/models/questions_models.dart';

class ScorePage extends StatelessWidget {
  final int score;
  final void Function()? onTap;
  const ScorePage({super.key, required this.score, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                ' YOUR QUIZ HAS COMPLETED!',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.celebration,
                color: Colors.amber,
              ),
            ],
          ),
          style: TextButton.styleFrom(
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        const Text(
          'Your Score is: ',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 35,
            color: Color.fromARGB(255, 8, 8, 8),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          '$score/${QA.length}',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 80,
            color: Color.fromARGB(255, 69, 109, 70),
          ),
        ),
        const SizedBox(height: 15),
        TextButton(
          onPressed: onTap,
          style: TextButton.styleFrom(
              backgroundColor: Color.fromARGB(255, 18, 83, 20)),
          child: const Text(
            'RESTART',
            style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 251, 249, 249),
                fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
