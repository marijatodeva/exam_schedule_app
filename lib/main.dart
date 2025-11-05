import 'package:flutter/material.dart';
import 'models/exam.dart';
import 'models/exam_data.dart';
import 'screens/exam_detail_screen.dart';
import 'screens/past_exam_screen.dart';


void main() {
  runApp(const ExamScheduleApp());
}

class ExamScheduleApp extends StatelessWidget {
  const ExamScheduleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Распоред за испити',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const ExamListScreen(),
    );
  }
}

class ExamListScreen extends StatelessWidget {
  const ExamListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Распоред за испити - 223046'), // Твој индекс овде ❤️
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: exams.length,
        itemBuilder: (context, index) {
          final exam = exams[index];
          final now = DateTime.now();
          final isPast = exam.dateTime.isBefore(DateTime.now());

          return Card(
            color: isPast ? Colors.red[200] : Colors.lightBlue[100],
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            child: ListTile(
              leading: const Icon(Icons.school, color: Colors.deepPurple),
              title: Text(
                exam.subjectName,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.calendar_today, size: 16),
                      const SizedBox(width: 5),
                      Text(
                        '${exam.dateTime.day}.${exam.dateTime.month}.${exam.dateTime.year} '
                            '${exam.dateTime.hour.toString().padLeft(2, '0')}:${exam.dateTime.minute.toString().padLeft(2, '0')}',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(Icons.location_on, size: 16),
                      const SizedBox(width: 5),
                      Text(exam.rooms.join(', ')),
                    ],
                  ),
                ],
              ),
              onTap: () {
                if (isPast) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PastExamScreen(exam: exam),
                    ),
                  );
                } else {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ExamDetailScreen(exam: exam),
                    ),
                  );
                }
              },

            ),
          );
        },
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        color: Colors.deepPurple,
        child: Text(
          'Вкупно испити: ${exams.length}',
          textAlign: TextAlign.center,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
