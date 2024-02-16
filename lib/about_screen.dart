import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:url_launcher/url_launcher.dart';

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
              'Welcome to my page!',
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
                    _launchURL('https://www.linkedin.com/in/maria-tesfaye-3283b42a7');
                  },
                  tooltip: 'LinkedIn',
                ),
                IconButton(
                  icon: Icon(FlutterIcons.github_ant),
                  onPressed: () {
                    _launchURL('https://github.com/mariatesfaye');
                  },
                  tooltip: 'GitHub',
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

  Future<void> _launchURL(String url) async {
    try {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      
      print('Error launching URL: $e');
    }
  }
}
