import 'package:dashboard/config/responsive.dart';
import 'package:dashboard/widgets/activity_details_card.dart';
import 'package:dashboard/widgets/header_widget.dart';
import 'package:dashboard/widgets/line_chart_widget.dart';
import 'package:flutter/material.dart';

class MainScreenWidget extends StatelessWidget {
  const MainScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 18),
        const HeaderWidget(),
        const SizedBox(height: 18),
        const ActivityDetailsCard(),
        const SizedBox(height: 18),
        const LineChartWidget(),
        const SizedBox(height: 18),
        if (!Responsive.isDesktop(context)) const ActivityDetailsCard(),
      ],
    );
  }
}
