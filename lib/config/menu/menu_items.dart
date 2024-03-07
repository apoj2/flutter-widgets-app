import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios Botones',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Progress Indicators',
      subtitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.credit_card),
  MenuItem(
      title: 'Snackbars',
      subtitle: 'Indicadores en pantalla',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItem(
      title: 'Animated Container',
      subtitle: 'Animaciones en Widgets',
      link: '/animated',
      icon: Icons.check_box_outline_blank),
  MenuItem(
      title: 'Ui Controls',
      subtitle: 'Opciones de control',
      link: '/uicontrols',
      icon: Icons.commit_sharp),
  MenuItem(
      title: 'App Tutorial',
      subtitle: 'Tutorial de inicio de la app',
      link: '/tutorial',
      icon: Icons.settings_accessibility_outlined),
  MenuItem(
      title: 'Infinite Scroll y Refresh',
      subtitle: 'Imagenes inifinitas',
      link: '/infinitescroll',
      icon: Icons.settings_accessibility_outlined),
  MenuItem(
      title: 'Counter Riverpod',
      subtitle: 'counter cliks riverpod',
      link: '/counterriverpod',
      icon: Icons.add),
  MenuItem(
      title: 'Theme Changer',
      subtitle: 'cambio de color y temas',
      link: '/themechanger',
      icon: Icons.color_lens)
];
