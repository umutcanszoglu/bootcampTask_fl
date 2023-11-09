import 'package:bc_task_fl/screens/page_y.dart';
import 'package:flutter/material.dart';

class PageX extends StatelessWidget {
  const PageX({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Page X"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const PageY()));
                },
                child: const Text("Go to page Y")),
          ],
        ),
      ),
    );
  }
}
