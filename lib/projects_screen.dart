import 'package:flutter/material.dart';

class ProjectsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Projects'),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          ProjectCard(
            projectName: 'Project 1',
            projectDescription: 'Description of Project 1',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/project_details',
                arguments: {
                  'projectName': 'Project 1',
                  'projectDescription': 'Description of Project 1',
                },
              );
            },
          ),
          ProjectCard(
            projectName: 'Project 2',
            projectDescription: 'Description of Project 2',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/project_details',
                arguments: {
                  'projectName': 'Project 2',
                  'projectDescription': 'Description of Project 2',
                },
              );
            },
          ),
          // Add more ProjectCard widgets for additional projects
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String projectDescription;
  final VoidCallback onTap;

  ProjectCard({
    required this.projectName,
    required this.projectDescription,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10),
      elevation: 2,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                projectName,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                projectDescription,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
