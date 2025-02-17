import 'package:flutter/material.dart';

class AcademicScreen extends StatelessWidget {
  const AcademicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Academic',
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
            _buildSubjectCard("Mathematics", "Grade: A", "5 Credits"),
            _buildSubjectCard("Science", "Grade: B+", "4 Credits"),
            _buildSubjectCard("English", "Grade: A", "3 Credits"),
            _buildSubjectCard("Social Studies", "Grade: A-", "3 Credits"),
            _buildSubjectCard("Computer Science", "Grade: B", "4 Credits"),
          ],
        ),
      ),
    );
  }

  Widget _buildSubjectCard(String title, String grade, String credits) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(Icons.school, color: const Color(0xFF1D3557)),
            const SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 5),
                  Text(grade, style: TextStyle(color: Colors.green[600])),
                  Text(credits, style: TextStyle(color: Colors.black)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
