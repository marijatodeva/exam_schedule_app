import 'exam.dart';


final fixedNow = DateTime(2025, 11, 1);

List<Exam> exams = [
  Exam(subjectName: 'Бази на податоци', dateTime: DateTime(2025, 10, 10, 9, 0), rooms: ['Лаб. 12']),
  Exam(subjectName: 'Оперативни системи', dateTime: DateTime(2025, 10, 12, 10, 0), rooms: ['Лаб. 3']),
  Exam(subjectName: 'Вештачка интелигенција', dateTime: DateTime(2025, 10, 15, 12, 0), rooms: ['Лаб. 118']),
  Exam(subjectName: 'Мобилни апликации', dateTime: DateTime(2025, 10, 18, 9, 30), rooms: ['Лаб. 215']),

  Exam(subjectName: 'Компјутерски мрежи', dateTime: DateTime(2025, 11, 29, 13, 0), rooms: ['Лаб. 13']),
  Exam(subjectName: 'Интернет технологии', dateTime: DateTime(2025, 12, 2, 11, 15), rooms: ['Лаб. 12']),
  Exam(subjectName: 'Алгоритми и податочни структури', dateTime: DateTime(2025, 12, 5, 8, 30), rooms: ['Лаб. 2']),
  Exam(subjectName: 'Објектно ориентирано програмирање', dateTime: DateTime(2025, 12, 8, 10, 0), rooms: ['Лаб. 3']),
  Exam(subjectName: 'Информациски системи', dateTime: DateTime(2025, 12, 12, 12, 0), rooms: ['Лаб. 118']),
  Exam(subjectName: 'Софтверско инженерство', dateTime: DateTime(2025, 12, 15, 9, 0), rooms: ['Лаб. 215', 'Лаб. 13']),
];
