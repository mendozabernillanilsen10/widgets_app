import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_iten.dart';
import 'package:widgets_app/presentation/screens/cards/cads_escreens.dart';

class HomeScren extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScren({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FLUTTER + MATERIAL 3'),
      ),
      body: _homeView(),
    );
  }
}

class _homeView extends StatelessWidget {
  const _homeView();
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItenms.length,
      itemBuilder: (context, index) {
        final item = appMenuItenms[index];
        return _custonListTitle(item: item);
      },
    );
  }
}

class _custonListTitle extends StatelessWidget {
  const _custonListTitle({
    required this.item,
  });
  final MenuIten item;
  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ListTile(
      leading: Icon(
        item.icon,
        color: colors.primary,
      ),
      trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary),
      title: Text(item.title),
      subtitle: Text(item.subtitle),
      onTap: () {
        /* Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => const ButthonScreen(),
          ),
        );*/

        context.push(item.link);
        //context.pushNamed(CardsScreen.name)
      },
    );
  }
}
