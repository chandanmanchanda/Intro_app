import 'package:flutter/material.dart';
import 'calling_Constructor.dart';
import 'package:dio/dio.dart';
import 'package:http/http.dart' as http ;
import 'dart:convert'as convert;
import 'Constructorjson.dart';

class Tiles extends StatefulWidget{
  _TilesState createState()=>_TilesState();

}

class _TilesState extends State<Tiles>{

 void  initState(){
   super.initState();
 }
// getHttpData() async {
//  // var dio = Dio();
//   http.Response response = await http.get('https://jsonplaceholder.typicode.com/photos');
//   if (response.statusCode == 200) {
//     var jsonResponse = convert.jsonDecode(response.body);
////    var itemCount = jsonResponse['totalItems'];
//     print("Title = ${jsonResponse[0]["title"]}");
//   } else {
//     print("Request failed with status: ${response.statusCode}.");
//   }
// }
//
//
//
//  getDioData() async {
//    var dio = Dio();
//    Response response = await dio.get('https://jsonplaceholder.typicode.com/photos');
//    print(response.data[0]["title"]);
//  }
  Future getHttpData() async {
    // var dio = Dio();
    http.Response response;
  response  = await http.get('https://jsonplaceholder.typicode.com/users');
    if (response.statusCode == 200) {
      final constructorJson = constructorJsonFromJson(response.body);
    //  var jsonResponse = convert.jsonDecode(response.body);
//    var itemCount = jsonResponse['totalItems'];
      return constructorJson;
      print(response.body);
    } else {
      print("Request failed with status: ${response.statusCode}.");
    }
  }

  @override

  ConstList list= ConstList();
  Widget build(BuildContext context) {
    getHttpData();
    // TODO: implement build
   return Scaffold(
     backgroundColor: Colors.cyan,
     body: ListView.builder(
         itemCount: list.student.length,
         itemBuilder: (BuildContext context ,index)
     {
       return ListTile(
         title: Text('${list.listName(index)}'),
         subtitle: Text('${list.listRollNo(index)}'),
       );
     }),

   );
  }

}