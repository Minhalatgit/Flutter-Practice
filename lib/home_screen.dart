import 'package:flutter/material.dart';
import 'package:flutter_practice/topics/row_column_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> _topics = ["Row & Column", "Container"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: ListView.separated(
        itemCount: _topics.length,
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
        separatorBuilder: (context, index) => const Divider(
          height: 50,
        ),
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            _onTapTopic(index);
          },
          child: Text(
            _topics[index],
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
      ),
    );
  }

  void _onTapTopic(int index) {
    switch (index) {
      case 0:
        {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const RowColumnScreen()));
          break;
        }
    }
  }
}
