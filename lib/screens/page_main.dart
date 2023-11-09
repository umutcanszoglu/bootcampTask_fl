import 'package:bc_task_fl/screens/page_a.dart';
import 'package:bc_task_fl/screens/page_x.dart';
import 'package:flutter/material.dart';

class PageMain extends StatelessWidget {
  const PageMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Main Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PageA()));
                },
                child: const Text("Go to page A")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PageX()));
                },
                child: const Text("Go to page X")),
          ],
        ),
      ),
    );
  }
}
