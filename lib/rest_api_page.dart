import 'dart:ui';

import 'package:flutter/material.dart';
import 'classes/album_class.dart';
import 'package:http/http.dart' as http;
import 'dart:async';
import 'dart:convert';
import 'dart:io';

class RestApiPage extends StatefulWidget {
  const RestApiPage({Key? key}) : super(key: key);

  @override
  _RestApiPageState createState() => _RestApiPageState();
}

class _RestApiPageState extends State<RestApiPage> {
  late Future<Album> futureAlbum;

  String ref = 'https://jsonplaceholder.typicode.com/albums/1';

  var _controller = TextEditingController(
    text: 'https://jsonplaceholder.typicode.com/albums/1',
  );



  Future<Album> fetchAlbum(ref) async {
    final response = await http.get(Uri.parse(ref));
    if (response.statusCode == 200) {
      return Album.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }

  @override
  void initState() {
    super.initState();
    futureAlbum = fetchAlbum(ref);
    _controller.addListener(changeRef);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void changeRef() {
    print('res: ${_controller.text}');
    ref = _controller.text;
    fetchAlbum(ref);
  }

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Container(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter a search term',
            ),
          ),
        ),
        FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              print(snapshot.data);
              return Text(
                snapshot.data!.title,
                style: TextStyle(
                    fontFamily: 'IndieFlower'
                ),
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return CircularProgressIndicator();
          },
        ),
      ],
    ));
  }
}
