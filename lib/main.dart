import 'package:flutter/material.dart';
import 'home_page.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';

void main() {
  runApp(MyApp());
  // useFuture();
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title:Center(
            child: Text(
              'Titel)'
            ),
          )

        ),
          body: MyHomePage(title: 'Strange name')
      ),
    );
  }
}

// var ref = 'https://jsonplaceholder.typicode.com/albums';
//
// var encoded = Uri.parse(ref);
//
// Future<List> fetchAlbum (numb) async{
//   var response = await http.get(encoded);
//   var map = json.decode(response.body) as List;
//   print(map[0]);
//   for (var el in map; el<10; el+ ){
//     return el
//   }
// }
//
// void useFuture() async{
//   try{
//     var result = await fetchAlbum(1);
//     print(result);
//   }
//   catch(e){
//     print (e);
//   }
// }

