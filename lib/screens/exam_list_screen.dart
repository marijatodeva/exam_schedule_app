import 'package:flutter/material.dart';
import '../models/exam_data.dart';
import '../models/exam.dart';
import 'exam_detail_screen.dart';

class ExamListScreen extends StatelessWidget {
  const ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред за испити - 123456'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          final isPast = exam.dateTime.isBefore(fixedNow);

          return Card(
            color: isPast ? Colors.grey[300] : Colors.lightBlue[100],
            margin: const EdgeInsets.all(8),
            child: ListTile(
              title: Text(exam.subjectName),
              subtitle: Text(
                  '${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year} - ${exam.dateTime.hour}:${exam.dateTime.minute.toString().padLeft(2, '0')}'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ExamDetailScreen(exam: exam),
                  ),
                );
              },
            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        color: Colors.blueAccent,
        padding: const EdgeInsets.all(16),
        child: Text(
          'Вкупно испити: ${exams.length}',
          style: const TextStyle(color: Colors.white, fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
