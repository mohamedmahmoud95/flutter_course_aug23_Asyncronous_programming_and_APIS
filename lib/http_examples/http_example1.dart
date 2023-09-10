import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_course_aug23_asyncronous_programming_and_api_http_requests/http_examples/to_do_class.dart';
import 'package:http/http.dart';

class HttpExample1 extends StatefulWidget {
  const HttpExample1({Key? key}) : super(key: key);

  @override
  State<HttpExample1> createState() => _HttpExample1State();
}

class _HttpExample1State extends State<HttpExample1> {




  //--------------------------------------------------------------------------//
  //HTTP request and response with a dummy API example

  // void getData() async{
  //   //dummy API
  //   Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/3'));
  //   debugPrint(response.body);
  // }
 //--------------------------------------------------------------------------//



  // --------------------------------------------------------------------------//
  // HTTP request and response with a dummy API example
  // decoding response
  void getData(int num) async{
    //dummy API
    try {
      Response response = await get(
          Uri.parse('https://jsonplaceholder.typicode.com/todos/$num'));
      if (response.statusCode != 404)
        {
          print("got data");
        }
      else
        {
          print("not found");
        }
      Map data = jsonDecode(response.body);
      debugPrint(data.toString());
      debugPrint(data['title']);
    }catch(e){
      print(e);
    }
  }
 // --------------------------------------------------------------------------//




  //--------------------------------------------------------------------------//
  //HTTP request and response - World time API
  void getTime() async{
    Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/Africa/Cairo'));
    Map data = jsonDecode(response.body);
     debugPrint(data.toString());
    debugPrint(data['datetime']);
  }
  //--------------------------------------------------------------------------//

//try and catch


  @override
  void initState(){
    super.initState();
    getData(1);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
