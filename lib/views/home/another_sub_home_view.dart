import 'package:flutter/material.dart';

class AnotherSubHomeView extends StatefulWidget {
  const AnotherSubHomeView({super.key});

  @override
  State<AnotherSubHomeView> createState() => _AnotherSubHomeViewState();
}

class _AnotherSubHomeViewState extends State<AnotherSubHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text("Another Sub Home View"),
        ),
        body: Center(
          child: Text('Sub SUb Home'),
        ));
  }
}
