import 'package:dashboard/config/responsive.dart';
import 'package:dashboard/utils/colors/app_colors.dart';
import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (!Responsive.isDesktop(context))
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: InkWell(
              onTap: () {
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0),
                child: Icon(
                  Icons.menu,
                  color: Colors.grey,
                  size: 35,
                ),
              ),
            ),
          ),
        if (!Responsive.isMobile(context))
          Expanded(
            child: Container(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: MyAppColor.cardBackgroundColor,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    borderSide:
                        BorderSide(color: Theme.of(context).primaryColor),
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
            ),
          ),
        if (Responsive.isMobile(context))
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.search,
                color: Colors.grey,
                size: 35,
              ))
      ],
    );
  }
}
