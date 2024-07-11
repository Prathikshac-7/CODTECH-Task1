import 'package:app_todo/pages/home_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(seconds: 3), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(
              130), // Adjust radius to make the corners round
          child: Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              color: Colors.white, // Background color of the container
            ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Image.asset(
            'assets/todo_image2.png',
            fit: BoxFit.cover, // Adjust how the image fills the container
          ),
        ),
      ),
    )
        ),
      );
  }
}
