import 'package:flutter/material.dart';
import 'package:news_app/login_screen.dart';
import 'package:news_app/signup/signup_screen.dart';
import 'package:news_app/textbutton/text_button_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Use Future.delayed for a splash effect
    Future.delayed(Duration(seconds: 100), () {
      bool shouldNavigateToLogin = true; // Replace with your condition
      if (shouldNavigateToLogin) {
        navigateToLoginScreen();
      } 
    });
  }

  void navigateToLoginScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => LoginScreen()),
    );
  }

  void navigateToSignupScreen() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => SignupScreen()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "images/logo_image.png",
              width: MediaQuery.of(context).size.width * 0.5,
              height: MediaQuery.of(context).size.height * 0.3, // Increase the height here
            ),
            SizedBox(height: 25),
            Text(
              "Let YOU Know The Latest Updates",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 40),
            TextButtonWidget(
              title: "Login",
              titlecolor: Colors.white,
              buttonbackgroundcolor: Color.fromRGBO(0, 0, 255, 1),
              onPressed: () {
                navigateToLoginScreen();
              },
            ),
            SizedBox(height: 20),
            TextButtonWidget(
              title: "SignUp",
              titlecolor: Colors.black,
              buttonbackgroundcolor: Colors.white,
              onPressed: () {
                navigateToSignupScreen();
              },
            ),
          ],
        ),
      ),
    );
  }
}
