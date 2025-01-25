import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RYTHM365 Login"),
        backgroundColor: Colors.blueAccent,  // App's theme color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome to RYTHM365!',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 30),
            // Login type selection
            Text(
              'Select Login Type',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blueAccent,  // App's theme color
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  ),
                  onPressed: () {
                    // Navigate to the individual login form
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => IndividualLoginScreen()),
                    );
                  },
                  child: Text("Individual", style: TextStyle(fontSize: 16)),
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.greenAccent,  // Color for organization login
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  ),
                  onPressed: () {
                    // Navigate to the organization login form
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OrganizationLoginScreen()),
                    );
                  },
                  child: Text("Organization", style: TextStyle(fontSize: 16)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class IndividualLoginScreen extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Individual Login"),
        backgroundColor: Colors.blueAccent,  // App's theme color
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: "Email",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.email),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.blueAccent,  // App's theme color
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                // Handle individual login logic here
                Navigator.pushReplacementNamed(context, '/home');
              },
              child: Text("Login", style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}

class OrganizationLoginScreen extends StatelessWidget {
  final TextEditingController _organizationIdController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Organization Login"),
        backgroundColor: Colors.greenAccent,  // Different color for organization
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _organizationIdController,
              decoration: InputDecoration(
                labelText: "Organization ID",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.business),
              ),
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.greenAccent,  // Color for organization login
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              onPressed: () {
                // Handle organization login logic here
                Navigator.pushReplacementNamed(context, '/admin');
              },
              child: Text("Login", style: TextStyle(fontSize: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
