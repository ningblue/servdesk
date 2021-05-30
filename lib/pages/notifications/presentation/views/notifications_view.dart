import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:servdesk/presentation/config/options.dart';
import 'package:servdesk/presentation/constant.dart';
import 'package:servdesk/share/logger/logger_utils.dart';
import 'package:servdesk/utils/search.dart';
import 'package:servdesk/utils/size_config.dart';

class NotificationsView extends StatefulWidget {
  @override
  _NotificationsViewState createState() => _NotificationsViewState();
}

class _NotificationsViewState extends State<NotificationsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("通知"),
        ),
        body: Padding(
          padding:
              const EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
          child: Column(
            children: [
              SearchField(),
              Container(
                child: Center(
                    child: ElevatedButton(
                  child: Text("获取信息"),
                  onPressed: () async {
                    Response response =
                        await dio.get("/jflow/modules?page=1&limit=1");
                    Logger.write("response.data:$response.data.toString()");
                  },
                )),
              )
            ],
          ),
        ));
  }
}


