import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import '../routes/routes.dart';
import '../routes/application.dart';
import '../theme.dart';

class ServDesk extends StatefulWidget {
  State createState() {
    return ServDeskState();
  }
}

class ServDeskState extends State<ServDesk> {
  ServDeskState() {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    Application.router = router;
  }

  @override
  Widget build(BuildContext context) {
    final app = MaterialApp(
      title: "Servdesk",
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      onGenerateRoute: Application.router.generator,
    );
    return app;
  }
}
