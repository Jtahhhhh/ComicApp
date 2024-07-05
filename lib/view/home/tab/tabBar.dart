import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'TapController.dart';

List <String>types = ['Action','Drama','Comedy','Romance',"Horor","Sci-fi"];

class CustomTab extends StatelessWidget {
  final TapController tab = Get.put(TapController());

  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scrollbar(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: types.asMap().entries.map((entry) {
              int index = entry.key;
              String type = entry.value;
              return buildTabItem(context, index, type);
            }).toList(),
          ),
        ),
      ),
    );
  }

  Widget buildTabItem(BuildContext context, int index, String type) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: GestureDetector(
        onTap: () => tab.changeTab(index),
        child: Container(
          width: 70,
          decoration: BoxDecoration(
            border: Border(
              left: tab.selectedIndex.value == index ? BorderSide(color: Colors.red, width: 5): BorderSide(width: 0)
            ),
          ),
          child: Center(
            child: Text(
              type,
              style: TextStyle(
                color: tab.selectedIndex.value == index ? Colors.white : Colors.white60,
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
