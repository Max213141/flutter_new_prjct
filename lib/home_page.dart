import 'package:flutter/material.dart';
import 'package:own_project/stateless/stls_button.dart';
import 'package:own_project/stateless/stls_img.dart';
import 'rest_api_page.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
    this.title,
  }) : super(key: key);

  var title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
        if (orientation == Orientation.portrait) {
          return Material(
            child: Flex(
              direction: Axis.vertical,

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IMG(),
                Text(
                    '$_counter',
                  style: TextStyle(
                    fontSize: 21,
                    backgroundColor: Colors.grey,
                  ),
                ),
                RestApiPage(),
                FloatingActionButton(
                    onPressed: _incrementCounter,
                    tooltip: 'Increment',
                    child: Icon(Icons.add)
                ),
                But_ton()
              ],
            ),
          );
        } else {
          return Material(
              child: Flex(
                direction: Axis.vertical,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$_counter',
                    style: TextStyle(
                      fontSize: 21,
                      backgroundColor: Colors.grey,
                    ),
                  ),
                  RestApiPage(),
                  FloatingActionButton(
                      onPressed: _incrementCounter,
                      backgroundColor: Colors.redAccent,
                      tooltip: 'Increment',
                      child: Icon(Icons.add)),
                ],
              ),
          );
        }
      }),
    );
  }
}
