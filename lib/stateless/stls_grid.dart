import 'package:flutter/material.dart';

import 'stls_special_row.dart';

class GridForSudoku extends StatelessWidget {
  const GridForSudoku({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          RowForGrid(),
          RowForGrid(),
          RowForGrid(),
          RowForGrid()
        ],
      ),
    );
  }
}
