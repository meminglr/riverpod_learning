import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/providers/simple_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Learning')),
      floatingActionButton: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.add)),
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.remove)),
        ],
      ),
      body: Center(
        child: Text("Counter Page", style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
