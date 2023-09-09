import 'package:flutter/material.dart';
import 'package:flutter_course_aug23_asyncronous_programming_and_api_http_requests/async_programming_examples/async_programming_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AsyncProgrammingExample(),
    );
  }
}
