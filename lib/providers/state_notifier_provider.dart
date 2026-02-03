import 'package:flutter_riverpod/legacy.dart';

class CounterStateNotifier extends StateNotifier<int> {
  CounterStateNotifier() : super(0);

  void increment() => state++;
  void decrement() => state--;
  void reset() => state = 0;
}

final counterStateNotifierProvider =
    StateNotifierProvider<CounterStateNotifier, int>(
      (ref) => CounterStateNotifier(),
    );
