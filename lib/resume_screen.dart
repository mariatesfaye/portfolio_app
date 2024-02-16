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
              'Resume/CV Content',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Add your resume content here

            ElevatedButton(
              onPressed: () {
                // Navigate to the PDF viewer screen
                Navigator.pushNamed(context, '/pdf_viewer', arguments: 'resume.pdf');
              },
              child: Text('View Resume'),
            ),
          ],
        ),
      ),
    );
  }
}
