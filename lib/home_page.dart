import 'package:flutter/material.dart';
import 'package:flutterscope_com/about_website.dart';

class HomePage extends StatefulWidget {

  final String title;

  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/flutterscope_logo_circle.png',
              height: 80.0,
              width: 80.0,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              widget.title,
              style: const TextStyle(fontSize: 24.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              AboutWebsite().websiteMessage,
              style: const TextStyle(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
