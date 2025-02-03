import 'package:flutter/material.dart';
import 'exam_interface_page.dart';

class ExamInstructionsPage extends StatelessWidget {
  final String examTitle;
  final String examDuration;
  final List<String> rules;

  const ExamInstructionsPage({
    super.key,
    required this.examTitle,
    required this.examDuration,
    required this.rules,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exam Instructions'),
        backgroundColor: Colors.blue.shade700,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildExamHeader(),
              const SizedBox(height: 20),
              _buildInstructionsCard(),
              const SizedBox(height: 30),
              _buildStartButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExamHeader() {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(examTitle, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Row(
              children: [
                const Icon(Icons.timer, size: 20),
                const SizedBox(width: 8),
                Text('Duration: $examDuration', style: const TextStyle(fontSize: 16)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInstructionsCard() {
    return Card(
      elevation: 3,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Important Instructions:', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            Column(
              children: rules.map((rule) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Text('• $rule', style: const TextStyle(fontSize: 16)),
              )).toList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStartButton(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => ExamInterfacePage(examTitle: examTitle, examDuration: examDuration)));
        },
        child: const Text('Start Exam'),
      ),
    );
  }
}
