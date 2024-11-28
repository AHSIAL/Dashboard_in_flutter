import 'package:dashboard/widgets/main_screen_widget.dart';
import 'package:dashboard/widgets/side_drawer_menu.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Row(
        children: [
          Expanded(
              flex: 2,
              child: SizedBox(
                child: SideDrawerMenu(),
              )),
          Expanded(
            flex: 7,
            child: MainScreenWidget(),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      )),
    );
  }
}
