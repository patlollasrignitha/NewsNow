import 'package:flutter/material.dart';
import 'package:news_app/categories/politics_news_page.dart';
import 'package:news_app/login_screen.dart';
import 'package:news_app/news_page.dart';
import 'package:news_app/signup/signup_screen.dart';
import 'package:news_app/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(),
      routes: {
        '/splash': (context) => const SplashScreen(),
        '/login': (context) => const LoginScreen(),
        '/signup': (context) => const SignupScreen(),
        '/newspage': (context) =>  NewsPage(),
        '/politicspage' :(context) => PoliticsNewsPage(),
      },
      initialRoute: '/splash',
    );
  }
}
