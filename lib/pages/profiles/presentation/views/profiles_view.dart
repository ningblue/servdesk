// import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:servdesk/infrastructure/profiles/profiles.dart';

// import 'package:servdesk/presentation/config/options.dart';
// import 'package:servdesk/share/logger/logger_utils.dart';

class ProfilesView extends StatefulWidget {
  @override
  _ProfilesViewViewState createState() => _ProfilesViewViewState();
}

class _ProfilesViewViewState extends State<ProfilesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(14, 14, 31, 1),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          "用户中心",
          style: TextStyle(
            color: Colors.black, //设置字体颜色
            // fontSize: 20,//设置字体大小
          ),
        ),
      ),
      body: Body(),
    );
  }
}
