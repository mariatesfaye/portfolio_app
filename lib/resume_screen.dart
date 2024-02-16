import 'package:flutter/material.dart';

class ResumeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Resume/CV'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Education',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Bachelor of Science in software engineering and computing technology(IT Stream), ',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Projects Experience',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Software Engineer student at AAIT, (June 28 2022 - July 2025)',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/pdf_viewer', arguments: 'maria_resume.pdf');
              },
              child: Text('View Resume'),
            ),
          ],
        ),
      ),
    );
  }
}
