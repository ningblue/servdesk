import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:servdesk/presentation/Headers/routeHandler.dart';
import 'package:servdesk/presentation/Headers/RequestsHeader.dart';

class Routes {
  static String root = "/";
  static String requests = "/requests";

  static void configureRoutes(FluroRouter router) {
    router.notFoundHandler = Handler(
        handlerFunc: (BuildContext context, Map<String, List<String>> params) {
      print("ROUTE WAS NOT FOUND !!!");
      return;
    });

    router.define(root, handler: rootHandler);
    router.define(requests, handler: requestsHandler);
  }
}
