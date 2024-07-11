import 'package:flutter/material.dart';

class QuestionsModels {
  final String question;
  final List<Map<String, dynamic>> answers;
  final String correct;

  const QuestionsModels(
      {required this.question, required this.answers, required this.correct});
}

List<QuestionsModels> QA = const [
  QuestionsModels(
    question: 'What\'s your favorite color?',
    answers: [
      {
        'text': 'Red',
        'icon': Icon(
          Icons.color_lens,
          color: Colors.red,
        )
      },
      {
        'text': 'Blue',
        'icon': Icon(
          Icons.color_lens,
          color: Colors.blue,
        )
      },
      {
        'text': 'Green',
        'icon': Icon(
          Icons.color_lens,
          color: Colors.green,
        )
      },
      {
        'text': 'Black',
        'icon': Icon(
          Icons.color_lens,
          color: Colors.black,
        )
      },
    ],
    correct: 'Red',
  ),
  QuestionsModels(
    question: 'What\'s your favorite animal?',
    answers: [
      {
        'text': 'Dog',
        'icon': Icon(
          Icons.pets_outlined,
          color: Color.fromARGB(255, 70, 47, 1),
        )
      },
      {
        'text': 'Cat',
        'icon': Icon(
          Icons.pets_outlined,
          color: Color.fromARGB(255, 210, 117, 193),
        )
      },
      {
        'text': 'Elephant',
        'icon': Icon(
          Icons.pets_outlined,
          color: Color.fromARGB(255, 83, 153, 228),
        )
      },
      {
        'text': 'Lion',
        'icon': Icon(
          Icons.pets_outlined,
          color: Color.fromARGB(255, 217, 74, 17),
        )
      },
    ],
    correct: 'Dog',
  ),
  QuestionsModels(
    question: 'What\'s your favorite food?',
    answers: [
      {
        'text': 'Pizza',
        'icon': Icon(
          Icons.local_pizza,
          color: Colors.amber,
        )
      },
      {
        'text': 'Burger',
        'icon': Icon(
          Icons.fastfood,
          color: Colors.amber,
        )
      },
      {
        'text': 'Pasta',
        'icon': Icon(
          Icons.ramen_dining,
          color: Colors.amber,
        )
      },
      {
        'text': 'Sandwich',
        'icon': Icon(
          Icons.fastfood,
          color: Colors.amber,
        )
      },
    ],
    correct: 'Pizza',
  ),
  QuestionsModels(
    question: 'What\'s your favorite movie?',
    answers: [
      {'text': 'Titanic', 'icon': Icons.movie},
      {'text': 'Avatar', 'icon': Icons.movie},
      {'text': 'Inception', 'icon': Icons.movie},
      {'text': 'Interstellar', 'icon': Icons.movie},
    ],
    correct: 'Avatar',
  ),
];
