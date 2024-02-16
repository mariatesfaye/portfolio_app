import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> arguments =
        ModalRoute.of(context).settings.arguments;
    final String projectName = arguments['projectName'];
    final String projectDescription = arguments['projectDescription'];
    final String projectLead = arguments['projectLead'];
    final String startDate = arguments['startDate'];
    final String endDate = arguments['endDate'];
    final List<String> technologies = arguments['technologies'];
    final String projectLink = arguments['projectLink'];

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
            SizedBox(height: 10),
            ListTile(
              title: Text('Project Lead'),
              subtitle: Text(projectLead),
            ),
            ListTile(
              title: Text('Start Date'),
              subtitle: Text(startDate),
            ),
            ListTile(
              title: Text('End Date'),
              subtitle: Text(endDate),
            ),
            Wrap(
              children: technologies.map((tech) => Text(tech + ' ')).toList(),
            ),
            SizedBox(height: 10),
            if (projectLink != null)
              ElevatedButton(
                onPressed: () => launch(projectLink),
                child: Text('View Project Website'),
              ),
          ],
        ),
      ),
    );
  }
}
