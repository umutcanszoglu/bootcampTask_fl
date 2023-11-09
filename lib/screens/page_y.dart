import 'package:flutter/material.dart';

class PageY extends StatelessWidget {
  const PageY({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> deviceBack(BuildContext context) async {
      Navigator.of(context).popUntil((route) => route.isFirst);
      return true;
    }

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            icon: const Icon(Icons.arrow_back)),
        title: const Text("Page Y"),
      ),
      body: WillPopScope(
        onWillPop: () => deviceBack(context),
        child: const Column(
          children: [],
        ),
      ),
    );
  }
}
