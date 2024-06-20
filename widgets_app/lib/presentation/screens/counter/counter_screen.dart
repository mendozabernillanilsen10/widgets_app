import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/counters_providers.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class counterScreen extends ConsumerWidget {
  static const name = "counter_scrip";
  const counterScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final int Click_Counter = ref.watch(CountersProvider);
    final bool isDarkMode = ref.watch(themeNotiqueProvaider).isDarMode;

    return Scaffold(
      appBar: AppBar(
        title: Text('Counters Scring '),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
            onPressed: () {
              ref.read(themeNotiqueProvaider.notifier).toggleDarkMode();
            },
          )
        ],
      ),
      body: Center(
        child: Text('VALOR : $Click_Counter',
            style: Theme.of(context).textTheme.titleLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(CountersProvider.notifier).state++;
          //  ref.read(CountersProvider.notifier).update((state) => state + 1);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
