import 'package:flutter/material.dart';

class CountState extends InheritedWidget {
  final int count;
  final void Function() addCounter;
  final void Function() removeCounter;

  const CountState({
    super.key,
    required this.count,
    required this.addCounter,
    required this.removeCounter,
    required Widget child,
  }) : super(child: child);

  static CountState of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<CountState>())!;
  }

  @override
  bool updateShouldNotify(CountState oldWidget) {
    return count != oldWidget.count;
  }
}
