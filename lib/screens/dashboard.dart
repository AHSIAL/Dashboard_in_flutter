import 'package:dashboard/config/responsive.dart';
import 'package:dashboard/widgets/main_screen_widget.dart';
import 'package:dashboard/widgets/side_drawer_menu.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    // final isWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: !isDesktop
          ? const SizedBox(
              width: 250,
              child: SideDrawerMenu(),
            )
          : null,
      body: SafeArea(
          child: Row(
        children: [
          if (isDesktop)
            Expanded(
                flex: 2,
                child: SizedBox(
                  child: SideDrawerMenu(),
                )),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(child: MainScreenWidget()),
          ),
          if (isDesktop)
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
