import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:liveasy/firebase_options.dart';
import 'package:liveasy/first_page.dart';

void main() async {
  // await Firebase.initializeApp();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: FirstPage(),
    );
  }
}
