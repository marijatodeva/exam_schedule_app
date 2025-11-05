import 'package:flutter/material.dart';
import '../models/exam.dart';

class PastExamScreen extends StatelessWidget {
  final Exam exam;

  const PastExamScreen({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(exam.subjectName),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.check_circle, color: Colors.green, size: 80),
            const SizedBox(height: 20),
            Text(
              '${exam.subjectName} е поминат!',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            Text('Датум: ${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year}'),
            Text('Простории: ${exam.rooms.join(', ')}'),
          ],
        ),
      ),
    );
  }
}
