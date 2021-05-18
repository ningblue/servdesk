import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:servdesk/pages/portals/presentation/controllers/portal_controller.dart';
import 'package:servdesk/presentation/Headers/HomeHeader.dart';

class PortalView extends StatefulWidget {
  @override
  _PortalComponentState createState() => _PortalComponentState();
}

class _PortalComponentState extends State<PortalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: new PortalComponent(),
    );
  }
}


