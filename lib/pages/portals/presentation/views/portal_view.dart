import 'package:flutter/material.dart';
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


