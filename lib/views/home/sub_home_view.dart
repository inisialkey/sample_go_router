import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SubHomeView extends StatefulWidget {
  const SubHomeView({super.key});

  @override
  State<SubHomeView> createState() => _SubHomeViewState();
}

class _SubHomeViewState extends State<SubHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text("Sub Home View"),
      ),
      body: Column(
        children: [
          MaterialButton(
            color: Colors.redAccent,
            onPressed: () {
              context.goNamed("anotherSubHome");
            },
            child: const Text(
              "Navigate To Another Sub Home View",
              style: TextStyle(color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading: Text(
                    index.toString(),
                  ),
                  title: Text("Home Item no. $index"),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
