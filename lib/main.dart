import 'package:flutter/material.dart';
import 'package:page_transition_animation/pages/home.dart';

void main() {
  runApp(const PageTransitionAnimationApp());
}

class PageTransitionAnimationApp extends StatelessWidget {
  const PageTransitionAnimationApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Page Transition Animation App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: false,
      ),
      home: Home(),
    );
  }
}
