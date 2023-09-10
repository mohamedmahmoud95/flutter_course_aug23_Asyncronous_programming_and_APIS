import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_course_aug23_asyncronous_programming_and_api_http_requests/async_programming_examples/async_programming_example.dart';
import 'package:flutter_course_aug23_asyncronous_programming_and_api_http_requests/http_examples/http_example1.dart';
import 'package:flutter_course_aug23_asyncronous_programming_and_api_http_requests/sign_in_screen.dart';
import 'firebase_options.dart';

void main ()  async
{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

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
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      //AsyncProgrammingExample(),
     // HttpExample1(),
      SignInScreen(),
    );
  }
}
