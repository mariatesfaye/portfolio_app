import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus, nunc non feugiat bibendum, urna arcu volutpat libero, eu rutrum ex velit eget velit.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'Skills',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              'Flutter, Dart, UI/UX Design',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  icon: Icon(FlutterIcons.linkedin_ant),
                  onPressed: () {
                    // Open LinkedIn profile
                  },
                ),
                IconButton(
                  icon: Icon(FlutterIcons.github_ant),
                  onPressed: () {
                    // Open GitHub profile
                  },
                ),
                IconButton(
                  icon: Icon(FlutterIcons.twitter_ant),
                  onPressed: () {
                    // Open Twitter profile
                  },
                ),
                SizedBox(width: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/resume');
                  },
                  child: Text('View Resume'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
