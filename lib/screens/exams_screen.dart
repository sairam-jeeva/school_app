import 'package:flutter/material.dart';

class ExamScreen extends StatelessWidget {
  const ExamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Exams',
          style: TextStyle(color: Colors.white),
          selectionColor: Colors.white,
        ),
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF1D3557),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(
          children: [
            _buildExamCard(
                "Mathematics", "22nd March 2023", "9:00 AM - 12:00 PM"),
            _buildExamCard("Science", "25th March 2023", "9:00 AM - 12:00 PM"),
            _buildExamCard("English", "30th March 2023", "9:00 AM - 12:00 PM"),
            _buildExamCard(
                "Computer Science", "5th April 2023", "9:00 AM - 12:00 PM"),
          ],
        ),
      ),
    );
  }

  Widget _buildExamCard(String subject, String date, String time) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(
              Icons.calendar_today,
              color: const Color(0xFF1D3557),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    subject,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(date, style: TextStyle(color: Colors.blue[600])),
                  Text(time, style: TextStyle(color: Colors.grey[600])),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
