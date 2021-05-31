import 'package:flutter/material.dart';

class But_ton extends StatelessWidget {
  const But_ton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () => {print('But_ton pressed')},
      icon: Icon(Icons.map),
      label: Text('Click'),
      style: ElevatedButton.styleFrom(
        primary: Colors.green,
      ),
    );
  }
}
