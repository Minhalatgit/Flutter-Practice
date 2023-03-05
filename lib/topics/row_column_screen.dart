import 'package:flutter/material.dart';

class RowColumnScreen extends StatefulWidget {
  const RowColumnScreen({Key? key}) : super(key: key);

  @override
  State<RowColumnScreen> createState() => _RowColumnScreenState();
}

class _RowColumnScreenState extends State<RowColumnScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Row & Column"),
      ),
      body: Container(
        color: Colors.red,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            Box(),
            Box(),
            Box(),
          ],
        ),
      ),
    );
  }
}

class Box extends StatelessWidget {
  const Box({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        border: Border.all(),
      ),
    );
  }
}
