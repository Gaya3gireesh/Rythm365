import 'package:flutter/material.dart';

class EventManagementScreen extends StatefulWidget {
  @override
  _EventManagementScreenState createState() => _EventManagementScreenState();
}

class _EventManagementScreenState extends State<EventManagementScreen> {
  final List<String> events = [
    "Event 1: Workshop on Time Management",
    "Event 2: Group Discussion on Work-Life Balance",
  ];

  final TextEditingController _eventController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Event Management"),
        backgroundColor: Colors.greenAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Event List
            Text(
              'Manage Events:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: events.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      title: Text(events[index]),
                      trailing: IconButton(
                        icon: Icon(Icons.delete, color: Colors.red),
                        onPressed: () {
                          setState(() {
                            events.removeAt(index);
                          });
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
            // Add Event
            TextField(
              controller: _eventController,
              decoration: InputDecoration(
                labelText: 'Enter Event Name',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                if (_eventController.text.isNotEmpty) {
                  setState(() {
                    events.add(_eventController.text);
                    _eventController.clear();
                  });
                }
              },
              child: Text("Add Event"),
              style: ElevatedButton.styleFrom(primary: Colors.blueAccent),
            ),
          ],
        ),
      ),
    );
  }
}
