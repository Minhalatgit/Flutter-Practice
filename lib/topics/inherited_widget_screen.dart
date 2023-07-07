import 'package:flutter/material.dart';

class InheritedWidgetScreen extends StatefulWidget {
  const InheritedWidgetScreen({Key? key}) : super(key: key);

  @override
  State<InheritedWidgetScreen> createState() => _InheritedWidgetScreenState();
}

class _InheritedWidgetScreenState extends State<InheritedWidgetScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Inherited Widget"),
      ),
      body: Column(
        children: const [
          Text("Hello"),
        ],
      ),
    );
  }
}
