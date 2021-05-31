import 'package:flutter/material.dart';

class IMG extends StatelessWidget {
  const IMG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15 ),
      margin: EdgeInsets.all(15),
      color: Colors.grey,
      child: Image(
        image: NetworkImage(
            'https://images.unsplash.com/photo-1534796636912-3b95b3ab5986?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80'),
      ),
    );
  }
}
