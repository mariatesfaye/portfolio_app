import 'package:flutter/material.dart';

class ProjectDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Extract project details from route arguments
    final Map<String, dynamic> arguments =
        ModalRoute.of(context).settings.arguments;
    final String projectName = arguments['projectName'];
    final String projectDescription = arguments['projectDescription'];

    return Scaffold(
      appBar: AppBar(
        title: Text('Project Details'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              projectName,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              projectDescription,
              style: TextStyle(fontSize: 16),
            ),
            // Add more project details here
          ],
        ),
      ),
    );
  }
}
