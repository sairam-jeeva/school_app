import 'package:flutter/material.dart';

class AttendanceScreen extends StatelessWidget {
  const AttendanceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          'Attendance',
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAttendanceSummary("Total Classes", "50"),
            _buildAttendanceSummary("Present", "45"),
            _buildAttendanceSummary("Absent", "5"),
            const SizedBox(height: 20),
            const Text(
              "Attendance Details",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            _buildAttendanceDetails("22nd February", "Present"),
            _buildAttendanceDetails("23rd February", "Absent"),
            _buildAttendanceDetails("24th February", "Present"),
            _buildAttendanceDetails("25th February", "Present"),
            _buildAttendanceDetails("26th February", "Absent"),
          ],
        ),
      ),
    );
  }

  Widget _buildAttendanceSummary(String label, String value) {
    return Card(
      margin: const EdgeInsets.only(bottom: 15),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(Icons.check_circle, color: Colors.green[600]),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                "$label: $value",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAttendanceDetails(String date, String status) {
    return Card(
      margin: const EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Icon(Icons.date_range, color: Colors.blue[600]),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                "$date - $status",
                style: TextStyle(
                    fontSize: 16,
                    color: status == "Present"
                        ? Colors.green[600]
                        : Colors.red[600]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
