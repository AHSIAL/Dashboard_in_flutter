import 'package:dashboard/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50, // Set a fixed height
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: MyAppColor.cardBackgroundColor,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
            borderSide: BorderSide(color: Theme.of(context).primaryColor),
          ),
          contentPadding: const EdgeInsets.symmetric(vertical: 5),
          hintText: "Search",
          prefixIcon: const Icon(
            Icons.search,
            color: Colors.grey,
            size: 21,
          ),
        ),
      ),
    );
  }
}
