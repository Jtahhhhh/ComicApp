import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_navigation_bar/responsive_navigation_bar.dart';
import 'NavigationController.dart';


class Bottom extends StatelessWidget {
  final NavigationController navigationController = Get.put(NavigationController());

  @override
  Widget build(BuildContext context) {
    return  Obx(
            () => ResponsiveNavigationBar(
              borderRadius: 20,
          selectedIndex: navigationController.selectedIndex.value,
          onTabChange: navigationController.changeTab,
              backgroundColor: Color.fromARGB(100, 44, 38, 38),
              textStyle: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          navigationBarButtons: const <NavigationBarButton>[
            NavigationBarButton(
              text: 'Movies',
              icon: Icons.local_movies_outlined,
              backgroundColor: Colors.red,

            ),
            NavigationBarButton(
              text: 'Tab 2',
              icon: Icons.keyboard_option_key,
                backgroundColor: Colors.red
            ),
            NavigationBarButton(
              text: 'Tab 4',
              icon: Icons.bookmarks_outlined,
                backgroundColor: Colors.red
            ),
            NavigationBarButton(
              text: 'Tab 3',
              icon: Icons.person_outline,
                backgroundColor: Colors.red
            ),
          ],
        ),
    );
  }
}
