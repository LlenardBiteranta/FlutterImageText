import 'package:flutter/material.dart';

/*
The purpose of this syntax is to import the Flutter Material Design library.
This gives access to built-in UI widgets based on Google's Material Design.

- import: Dart keyword to include external libraries
- package:flutter/: path to Flutter's Material package
*/

void main() {
  runApp(const MyApp());
}

/*
Entry point of the Flutter app.

- void main(): Starting point of any Dart/Flutter app
- runApp(): Attaches root widget to screen
- const MyApp(): Creates a constant instance of the app's main widget
*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hello Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

/*
MyApp is the root widget of the application.

- StatelessWidget: No mutable state
- MaterialApp: Sets up navigation, themes, and home screen
- title: Shown in app switcher
- theme: Sets primary color theme
- home: First screen shown (MyHomePage)
*/

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Scaffold provides the basic visual layout structure (AppBar, Body, etc.)
      appBar: AppBar(
        title: const Text('Hello Flutter App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Profile Image
            Image.asset(
              'assets/profile.jpg',
              width: 500,
              height: 500,
            ),

            const SizedBox(height: 20),

            // Title Text
            const Text(
              'Avengers Endgame',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // Synopsis
            const Text(
              'The fourth installment in the Avengers saga is the culmination of '
                  '22 interconnected Marvel films and the climax of a journey. '
                  'The worlds heroes finally understand just how fragile reality is, '
                  'and the sacrifices that must be made to uphold it, in a story of friendship, '
                  'teamwork and setting aside differences to overcome an impossible obstacle',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
