import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app/presentation/providers/theme_provider.dart';

class ThemeChanseScreen extends ConsumerWidget {
  static const String name = 'Counter_theme';
  const ThemeChanseScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final bool isDarkMode = ref.watch(themeNotiqueProvaider).isDarMode;

    return Scaffold(
      appBar: AppBar(title: Text('aaaaaaaaaaa'), actions: [
        IconButton(
          icon: Icon(isDarkMode ? Icons.dark_mode : Icons.light_mode),
          onPressed: () {
            //  ref.read(IsdarModeProvider.notifier).update((state) => !state);
            ref.read(themeNotiqueProvaider.notifier).toggleDarkMode();
          },
        )
      ]),
      body: const _themeChanseView(),
    );
  }
}

class _themeChanseView extends ConsumerWidget {
  const _themeChanseView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<Color> colors = ref.watch(colorlistProvider);
    final int selecteme = ref.watch(themeNotiqueProvaider).SelectcColor;
    ;

    return ListView.builder(
        itemCount: colors.length,
        itemBuilder: (context, index) {
          final Color color = colors[index];

          return RadioListTile(
              title: Text(
                "Este Colors ",
                style: TextStyle(color: color),
              ),
              activeColor: color,
              subtitle: Text('${color.value}'),
              value: index,
              groupValue: selecteme,
              onChanged: (value) {
                ref
                    .read(themeNotiqueProvaider.notifier)
                    .ChanseColorIndez(index);

                // ref.read(colorSelectcolorProvaider.notifier).state = index;
              });
        });
  }
}
