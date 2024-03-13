import 'package:flutter/material.dart';

class ReadSession extends StatelessWidget {
  const ReadSession({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reading Session"),
          backgroundColor: Theme.of(context).colorScheme.primary,
        ),
        body: const Expanded(child: Placeholder()));
  }
}
