import 'package:dashboard/widgets/activity_details_card.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        const SizedBox(height: 18),
        const HeaderWidget(),
        const SizedBox(height: 18),
        const ActivityDetailsCard(),
      ],
    );
  }
}
