import 'package:flutter/material.dart';
import 'package:servdesk/presentation/constant.dart';

class SearchField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: SizeConfig.screenWidth! * 0.6,
      // height: SizeConfig.screenWidth! * 0.6,
      width: 300,
      height: 20,
      decoration: BoxDecoration(
        color: kContentColorDarkTheme,
        // color: kSecondaryColor.withOpacity(0.1),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        onChanged: (value) => print(value),
        decoration: InputDecoration(
           
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            hintText: "Search product",
            prefixIcon: Icon(Icons.search)),
      ),
    );
  }
}