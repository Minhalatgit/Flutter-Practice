import 'package:flutter/material.dart';
import 'package:flutter_practice/inherited_widgets/count_state.dart';
import 'package:flutter_practice/inherited_widgets/inherited_widget_demo.dart';

class RootWidget extends StatefulWidget {
  const RootWidget({super.key});

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int count = 0;

  void addCounter() {
    setState(() {
      count++;
    });
  }

  void removeCounter() {
    setState(() {
      if (count > 0) {
        count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return CountState(
      count: count,
      addCounter: addCounter,
      removeCounter: removeCounter,
      child: const InheritedWidgetDemo(),
    );
  }
}
