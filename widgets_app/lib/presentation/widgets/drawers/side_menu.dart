import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widgets_app/config/menu/menu_iten.dart';

class SideMenu extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoidKey;

  const SideMenu({super.key, required this.scaffoidKey});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {
  int navDrawerIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    final hasNoth = MediaQuery.of(context).viewPadding.top > 35;

    return NavigationDrawer(
        selectedIndex: navDrawerIndex,
        onDestinationSelected: (value) {
          setState(() {
            navDrawerIndex = value;
          });
          final menuIten = appMenuItenms[value];
          context.push(menuIten.link);
          widget.scaffoidKey.currentState?.closeDrawer();
        },
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('John Doe'),
            accountEmail: const Text('john.doe@example.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: AssetImage('assets/1.png'),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(28, hasNoth ? 0 : 20, 16, 10),
            child: Text("Main"),
          ),
          ...appMenuItenms
              .sublist(0, 3)
              .map((iten) => NavigationDrawerDestination(
                    icon: Icon(iten.icon),
                    label: Text(iten.title),
                  )),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 16, 28, 10),
            child: Divider(),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(28, 10, 16, 10),
            child: Text("Sub Menu"),
          ),
          ...appMenuItenms.sublist(3).map((iten) => NavigationDrawerDestination(
                icon: Icon(iten.icon),
                label: Text(iten.title),
              )),
        ]);
  }
}
