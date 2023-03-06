import 'package:flutter/material.dart';

class WidgetLifeCycleScreen extends StatefulWidget {
  const WidgetLifeCycleScreen({Key? key}) : super(key: key);

  @override
  State<WidgetLifeCycleScreen> createState() => _WidgetLifeCycleScreenState();
}

class _WidgetLifeCycleScreenState extends State<WidgetLifeCycleScreen> {

  @override
  void initState() {
    super.initState();
    print("Init state called");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print("didChangeDependencies called");
  }

  @override
  Widget build(BuildContext context) {
    print("Build called");

    return Scaffold(
      appBar: AppBar(
        title: const Text("Widget Lifecycle"),
      ),
      body: Column(
        children: const [
          Text("Hello"),
        ],
      ),
    );
  }

  @override
  void didUpdateWidget(covariant WidgetLifeCycleScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    print("didUpdateWidget called");
  }

  @override
  void deactivate() {
    super.deactivate();
    print("deactivate called");
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose called");
  }
}
