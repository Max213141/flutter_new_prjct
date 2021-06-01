import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RowForGrid extends StatelessWidget {
  const RowForGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 25,
            height: 25,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
            ),
          )
        ],
      ),
    );
  }
}
