import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/providers/state_provider.dart';

class CounterPage extends ConsumerWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterProvider = ref.watch(counterStateProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Learning')),
      floatingActionButton: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateProvider.notifier).state++;
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateProvider.notifier).state--;
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Text(counterProvider.toString(), style: TextStyle(fontSize: 50)),
      ),
    );
  }
}
