import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:get/get.dart';
import 'package:servdesk/share/logger/logger_utils.dart';
import '../routes/application.dart';
import '../theme.dart';

class ServDesk extends StatefulWidget {
  State createState() {
    return ServDeskState();
  }
}

class ServDeskState extends State<ServDesk> {
  @override
  Widget build(BuildContext context) {
    var getMaterialApp = GetMaterialApp(
      title: "应用服务台",
      debugShowCheckedModeBanner: false,
      enableLog: true,
      logWriterCallback: Logger.write,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      initialRoute: Application.INITIAL,
      getPages: Application.routes,
    );
    final app = getMaterialApp;
    return app;
  }
}

// final String BASEAPI = FlutterConfig.get('BASE_API');
