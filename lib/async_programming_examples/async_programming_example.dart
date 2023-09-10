import 'package:flutter/material.dart';

class AsyncProgrammingExample extends StatefulWidget {
  const AsyncProgrammingExample({Key? key}) : super(key: key);

  @override
  State<AsyncProgrammingExample> createState() => _AsyncProgrammingExampleState();
}

class _AsyncProgrammingExampleState extends State<AsyncProgrammingExample> {


  Future<void> func() async {
     await Future.delayed(const Duration(seconds: 3), (){
      print("السلام عليكم");
    });
    await Future.delayed(const Duration(seconds: 2), (){
      print("وعليكم السلام");
    });
    print("أنا عاطف معاكوا هنا");
  }

  void func2()async{
    String username = await Future.delayed(const Duration(seconds: 3), (){
     return "mohamed";
    });

    String password = await Future.delayed(const Duration(seconds: 2), (){
      return "1234";
    });
    print("$username - $password");
  }

  @override
  void initState(){
    super.initState();
    func2();
  }

  @override
  Widget build(BuildContext context) {


    return const Scaffold(

    );
  }
}
