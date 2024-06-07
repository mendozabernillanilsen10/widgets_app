import 'package:flutter/material.dart';

class MenuIten {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuIten({
    required this.subtitle,
    required this.link,
    required this.icon,
    required this.title,
  });
}

const appMenuItenms = <MenuIten>[
  MenuIten(
    title: "botones",
    subtitle: "varios botones flutters",
    link: '/buttons',
    icon: Icons.smart_button,
  ),
  MenuIten(
    title: "Terjetas",
    subtitle: "UN contenedor Esterializado",
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuIten(
    title: "Progres",
    subtitle: "Progres indicador",
    link: '/pogresindicador',
    icon: Icons.priority_high_rounded,
  ),
  MenuIten(
      title: "Snack",
      subtitle: "Snack",
      link: '/snack',
      icon: Icons.access_time_filled_sharp),
  MenuIten(
      title: "Animacion ",
      subtitle: "animacion",
      link: '/animacion',
      icon: Icons.animation),
  MenuIten(
      title: "UII CONTROLES + T ",
      subtitle: "una serie de controles de botones ",
      link: '/ui_controlers',
      icon: Icons.access_alarm_outlined),
  MenuIten(
      title: "intrudccion a la aplicacion ",
      subtitle: "tutorial  a la a aplicacion a la aplicacion ",
      link: '/app_tutorial',
      icon: Icons.settings),
];
