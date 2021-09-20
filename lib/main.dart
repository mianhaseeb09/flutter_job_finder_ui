import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_job_finder_ui/screens/home.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   SystemChrome.setSystemUIOverlayStyle(
     const SystemUiOverlayStyle(
       statusBarColor: Colors.transparent
     )
   );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Job finder Ui',
      theme: ThemeData(
        primaryColor: const Color(0xFF43B1B7),
        backgroundColor: const Color(0xFFFED408)
      ),
      home:  HomeScreen(),
    );
  }
}

