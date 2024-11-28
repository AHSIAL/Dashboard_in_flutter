import 'package:dashboard/models/menu_models.dart';
import 'package:flutter/material.dart';

class SideMenuData {
  final menu = const <MenuModels>[
    MenuModels(icon: Icons.home, title: "Dashboard"),
    MenuModels(icon: Icons.person, title: "Profile"),
    MenuModels(icon: Icons.run_circle, title: "Exercise"),
    MenuModels(icon: Icons.settings, title: "Settings"),
    MenuModels(icon: Icons.history, title: "History"),
    MenuModels(icon: Icons.logout, title: "SingOut"),
  ];
}
