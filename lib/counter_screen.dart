import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_state_notifier_provider/providers.dart';

class CounterScreen extends ConsumerWidget {
  const CounterScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CounterScreen'),
        centerTitle: true,
      ),
      body: Center(
        child: Consumer(
          builder: (_, ref, __) {
            int count = ref.watch(counterProvider);
            return Text(
              count.toString(),
              style: ThemeData().textTheme.bodyLarge!.copyWith(
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(counterProvider.notifier).numIncrementer();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
