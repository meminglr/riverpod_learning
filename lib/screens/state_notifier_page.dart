import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_learning/providers/state_notifier_provider.dart';

class StateNotfierPage extends ConsumerWidget {
  const StateNotfierPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counterStateNotifier = ref.watch(counterStateNotifierProvider);
    return Scaffold(
      appBar: AppBar(title: Text('Riverpod Learning')),
      floatingActionButton: Row(
        spacing: 20,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateNotifierProvider.notifier).increment();
            },
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateNotifierProvider.notifier).reset();
            },
            child: Icon(Icons.refresh),
          ),
          FloatingActionButton(
            onPressed: () {
              ref.read(counterStateNotifierProvider.notifier).decrement();
            },
            child: Icon(Icons.remove),
          ),
        ],
      ),
      body: Center(
        child: Text(
          counterStateNotifier.toString(),
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
