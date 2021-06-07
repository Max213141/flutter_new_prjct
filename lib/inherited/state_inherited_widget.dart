import 'package:flutter/material.dart';

class StateInheritedWidget extends InheritedWidget{
  final int counter;

  const StateInheritedWidget({
    Key? key,
    @required Widget child,
    @required this.counter,
  }) : super(key:key, child:child);

  static StateInheritedWidget of(BuildContext context) => context
      .dependOnInheritedWidgetOfExactType()
      as StateInheritedWidget;

  @override
  bool updateShouldNotify(StateInheritedWidget oldWidget) =>
      oldWidget.counter != counter;
}