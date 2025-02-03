// exam_interface_page.dart
import 'package:flutter/material.dart';

class ExamInterfacePage extends StatefulWidget {
  final String examTitle;
  final String examDuration;

  const ExamInterfacePage({
    super.key,
    required this.examTitle,
    required this.examDuration,
  });

  @override
  State<ExamInterfacePage> createState() => _ExamInterfacePageState();
}

class _ExamInterfacePageState extends State<ExamInterfacePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.examTitle),
        backgroundColor: Colors.blue.shade700,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Exam Interface - Work in Progress'),
            Text('Duration: ${widget.examDuration}'),
          ],
        ),
      ),
    );
  }
}