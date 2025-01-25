import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome to RYTHM365"),
        backgroundColor: Colors.blueAccent, // App's theme color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Individual User!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Text(
              'Here are your personal details and tasks:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),

            // Button for Chat with Buddy (Redirect to chatbot)
            ElevatedButton(
              onPressed: () {
                // Navigate to Chatbot (Implement Chatbot screen here)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatbotScreen()), // Assuming ChatbotScreen is implemented
                );
              },
              child: Text("Chat with Your Buddy"),
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent, // Button color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            SizedBox(height: 20),

            // Button for Personal Task List (Task Management)
            ElevatedButton(
              onPressed: () {
                // Navigate to Personal Task List (Implement Task screen here)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TaskListScreen()), // Assuming TaskListScreen is implemented
                );
              },
              child: Text("Personal Task List"),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent, // Button color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            SizedBox(height: 20),

            // Button for View Report (Work hours and Weekly Analytics)
            ElevatedButton(
              onPressed: () {
                // Navigate to Report Screen (Implement Analytics screen here)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ReportScreen()), // Assuming ReportScreen is implemented
                );
              },
              child: Text("View Report"),
              style: ElevatedButton.styleFrom(
                primary: Colors.orangeAccent, // Button color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
            SizedBox(height: 20),

            // Button for Community (Redirect to Community Events Page)
            ElevatedButton(
              onPressed: () {
                // Navigate to Community Page (Implement Community Events screen here)
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CommunityScreen()), // Assuming CommunityScreen is implemented
                );
              },
              child: Text("Community"),
              style: ElevatedButton.styleFrom(
                primary: Colors.purpleAccent, // Button color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
