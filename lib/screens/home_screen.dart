import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Row(
          children: [
            Text(
              'イチラム',
              style: TextStyle(fontSize: 24, color: Colors.yellow[700]),
            ),
            Spacer(),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              child: Text(
                'Home',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/portfolio');
              },
              child: Text(
                'Portfolio',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/contact');
              },
              child: Text(
                'Contact',
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundColor: Colors.yellow[700],
              child: ClipOval(
                child: Image.asset(
                  'assets/images/hero.png',
                  fit: BoxFit.cover,
                  width: 160,
                  height: 160,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text('Hello', style: TextStyle(fontSize: 24, color: Colors.black)),
            Text(
              "I'm Ichram",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.orange[700],
              ),
            ),
            Text(
              'Paramadina Students',
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
