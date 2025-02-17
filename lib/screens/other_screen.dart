import 'package:flutter/material.dart';

class TimeTableScreen extends StatelessWidget {
  const TimeTableScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Time Table',
          style: TextStyle(color: Colors.white),
          selectionColor: Colors.white,
        ),
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF1D3557),
      ),
      body: Center(
        child: Text('Time Table of the Student here'),
      ),
    );
  }
}

class ReportsScreen extends StatelessWidget {
  const ReportsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Reports',
          style: TextStyle(color: Colors.white),
          selectionColor: Colors.white,
        ),
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF1D3557),
      ),
      body: Center(
        child: Text('Academic reports of the Student here'),
      ),
    );
  }
}

class FeesScreen extends StatelessWidget {
  const FeesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Fees Dues',
          style: TextStyle(color: Colors.white),
          selectionColor: Colors.white,
        ),
        leading: BackButton(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFF1D3557),
      ),
      body: Center(
        child: Text('Due Fees of the Student here'),
      ),
    );
  }
}
