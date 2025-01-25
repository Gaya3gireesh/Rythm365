import 'package:flutter/material.dart';

class ReportsScreen extends StatefulWidget {
  @override
  _ReportsScreenState createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  final Map<String, dynamic> userReports = {
    "totalUsers": 120,
    "activeUsersLast7Days": 85,
    "averageTimeSpent": 3.5, // in hours
    "totalTimeSpent": 420, // in hours
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Reports & Statistics"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'User Reports & Statistics:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Total Users
                    Text(
                      'Total Users: ${userReports["totalUsers"]}',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    // Active Users in Last 7 Days
                    Text(
                      'Active Users in Last 7 Days: ${userReports["activeUsersLast7Days"]}',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    // Average Time Spent
                    Text(
                      'Average Time Spent per User: ${userReports["averageTimeSpent"]} hours',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    // Total Time Spent
                    Text(
                      'Total Time Spent: ${userReports["totalTimeSpent"]} hours',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
