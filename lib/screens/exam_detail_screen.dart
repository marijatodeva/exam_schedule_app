import 'package:flutter/material.dart';
import '../models/exam.dart';

class ExamDetailScreen extends StatelessWidget {
  final Exam exam;

  const ExamDetailScreen({super.key, required this.exam});

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final difference = exam.dateTime.difference(now);
    final days = difference.inDays;
    final hours = difference.inHours % 24;

    return Scaffold(
      appBar: AppBar(
        title: Text(exam.subjectName),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Датум и време: ${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year} '
                '${exam.dateTime.hour.toString().padLeft(2, '0')}:${exam.dateTime.minute.toString().padLeft(2, '0')}'),
            const SizedBox(height: 8),
            Text('Простории: ${exam.rooms.join(', ')}'),
            const SizedBox(height: 8),
            Text('До испитот останува: $days дена, $hours часа'),
          ],
        ),
      ),
    );
  }
}
