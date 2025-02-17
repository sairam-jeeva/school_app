import 'package:flutter/material.dart';
import 'package:school_app/screens/academic_screens.dart';
import 'package:school_app/screens/attendance_screen.dart';
import 'package:school_app/screens/exams_screen.dart';
import 'package:school_app/screens/other_screen.dart';

class HomemainScreen extends StatefulWidget {
  const HomemainScreen({super.key});

  @override
  State<HomemainScreen> createState() => _HomemainScreenState();
}

class _HomemainScreenState extends State<HomemainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF1D3557),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/school-boy.jpeg"),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Gokul Kannan",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "LKG A",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Text(
                          "Roll Number: 01",
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Daily Activities",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  _buildActivityItem(
                      Icons.school, "Academic", const AcademicScreen()),
                  _buildActivityItem(Icons.note, "Exams", const ExamScreen()),
                  _buildActivityItem(
                      Icons.checklist, "Attendance", const AttendanceScreen()),
                  _buildActivityItem(
                      Icons.calendar_today, "Timetable", TimeTableScreen()),
                  _buildActivityItem(Icons.receipt, "Reports", ReportsScreen()),
                  _buildActivityItem(Icons.payment, "Fees", FeesScreen()),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: const Color(0xFF1D3557),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Upcoming Events",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 10),
                    _buildEventCard(
                      "assets/sportsday.jpeg",
                      "Sports Day",
                      "22-10-2023",
                      "Some Text Describing about the Sports Day",
                    ),
                    const SizedBox(height: 10),
                    _buildEventCard(
                      "assets/annual_day.jpeg",
                      "Annual Day",
                      "12-11-2023",
                      "Some Text Describing about the Annual Day",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildActivityItem(IconData icon, String title, Widget page) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(19)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 30, color: const Color(0xFF1D3557)),
            const SizedBox(height: 5),
            Text(
              title,
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildEventCard(
      String imagePath, String title, String date, String description) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Image.asset(imagePath, height: 50, width: 50, fit: BoxFit.cover),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  date,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                Text(
                  description,
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
