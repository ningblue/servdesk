import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:servdesk/presentation/config/options.dart';
import 'package:servdesk/share/logger/logger_utils.dart';

class NotificationsView extends StatefulWidget {
  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Center(
          child: ElevatedButton(
        child: Text("获取信息"),
        onPressed: () async {
          Response response = await dio.get("/jflow/modules?page=1&limit=1");
          Logger.write("response.data:$response.data.toString()");
        },
      )),
    ));
  }
}
