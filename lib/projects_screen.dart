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
            projectName: 'Personal Portfolio App',
            projectDescription: 'Built using flutter to show my skills and projects.',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/project_details',
                arguments: {
                  'projectName': 'Personal Portfolio App',
                  'projectDescription': 'This personal portfolio app is built to show my skills and projects.',
                  'projectLead': 'Maria Tesfaye',
                  'startDate': '2024-01-12',
                  'endDate' : '2024-02-14'
                },
              );
            },
          ),
          ProjectCard(
            projectName: 'Full-stack song manager',
            projectDescription:
                'This full-stack song app is built using React.js, Redux Toolkit and Node.js for viewing, adding, updating and deleting a song',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/project_details',
                arguments: {
                  'projectName': 'Full-stack song manager',
                  'projectDescription':
                      'This full-stack song app is built using React.js, Redux Toolkit and Node.js for viewing, adding, updating and deleting a song',
                  'projectLead': 'Maria Tesfaye',
                  'startDate': '2024-01-24',
                  'endDate': '2024-02-07',
                },
              );
            },
          ),
          ProjectCard(
            projectName: 'aspnet-core-api',
            projectDescription:
                'This task manager API is a RESTFUL web service which is built using ASP.NET core',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/project_details',
                arguments: {
                  'projectName': 'aspnet-core-api',
                  'projectDescription':
                      'This task manager API is a RESTFUL web service which is built using ASP.NET core',
                  'projectLead': 'Maria Tesfaye',
                  'startDate': '2024-01-22',
                  'endDate': '2024-02-13',
                },
              );
            },
          ),
          ProjectCard(
            projectName: 'Monitorix',
            projectDescription:
                'This is a web-based real-time performance monitoring tool built using Node.js',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/project_details',
                arguments: {
                  'projectName': 'Monitorix',
                  'projectDescription':
                      'This is a web-based real-time performance monitoring tool built using Node.js',
                  'projectLead': 'In a team of 5',
                  'startDate': '2023-12-20',
                  'endDate': '2024-01-26',
                },
              );
            },
          ),
          ProjectCard(
            projectName: 'React TODO app',
            projectDescription:
                'This to do app tracked is built using React.js',
            onTap: () {
              Navigator.pushNamed(
                context,
                '/project_details',
                arguments: {
                  'projectName': 'React TODO app',
                  'projectDescription':
                      'This to do app tracked is built using React.js',
                  'projectLead': 'Maria Tesfaye',
                  'startDate': '2024-01-18',
                  'endDate': '2024-02-01',
                },
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProjectCard extends StatelessWidget {
  final String projectName;
  final String projectDescription;
  final String projectLead;
  final String startDate;
  final String endDate;
  final VoidCallback onTap;

  ProjectCard({
    required this.projectName,
    required this.projectDescription,
    required this.projectLead,
    required this.startDate,
    required this.endDate,
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
              SizedBox(height: 10),
              Text(
                'Project Lead: $projectLead',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'Start Date: $startDate',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 5),
              Text(
                'End Date: $endDate',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
