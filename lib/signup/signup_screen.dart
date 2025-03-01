import 'package:flutter/material.dart';
import 'package:news_app/news_page.dart';
import 'package:news_app/textbutton/text_button_widget.dart';
import 'package:news_app/inputtextfield/input_text_field.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        title: Text("SignUp"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 24),
              Text(
                "Create an Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Get All Your Updates",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 24),
              InputTextField(
                controller: emailController,
                title: "Email Address",
                hinttext: "Email Address",
              ),
              SizedBox(height: 16),
              InputTextField(
                controller: passwordController,
                title: "New Password",
                hinttext: "Password",
              ),
              SizedBox(height: 16),
              InputTextField(
                controller: confirmPasswordController,
                title: "Confirm Password",
                hinttext: "Confirm Password",
              ),
              SizedBox(height: 24),
              TextButtonWidget(
                title: "Sign Up",
                titlecolor: Colors.white,
                buttonbackgroundcolor: Color.fromRGBO(0, 0, 255, 1),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => NewsPage()),
                  );
                },
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account? ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Navigate to LoginScreen
                      Navigator.pushReplacementNamed(context, '/login');
                    },
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
