import 'package:calorie_tracker/Heading.dart';
import 'package:calorie_tracker/home.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions
        .currentPlatform, // Add this if using firebase_options.dart
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const appName = "Calorie Tracker";
  static const primaryColor = 0xFFCFFFDC;
  static const primaryDark = 0xFF2E6F40;
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: Color.fromARGB(255, 118, 230, 74)),
          useMaterial3: true,
          scaffoldBackgroundColor: const Color(primaryColor)),
      home: Scaffold(
          appBar: AppBar(title: Heading(), backgroundColor: Color(primaryDark)),
          body: Center(child: Home())),
    );
  }
}
