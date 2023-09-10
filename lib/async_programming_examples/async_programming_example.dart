import 'package:flutter/material.dart';

class AsyncProgrammingExample extends StatefulWidget {
  const AsyncProgrammingExample({Key? key}) : super(key: key);

  @override
  State<AsyncProgrammingExample> createState() => _AsyncProgrammingExampleState();
}

class _AsyncProgrammingExampleState extends State<AsyncProgrammingExample> {


  void func(){
     Future.delayed(const Duration(seconds: 3), (){
      print("السلام عليكم");
    });

    Future.delayed(const Duration(seconds: 2), (){
      print("وعليكم السلام");
    });

    print("أنا عاطف معاكوا هنا");
  }

  @override
  void initState(){
    super.initState();
    func();

    print("أنا مليش دعوة بيهم");

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
  Widget build(BuildContext context) {


    return const Scaffold(

    );
  }
}
