import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';

import 'components/portalsBody.dart';

var portalHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return PortalComponent();
});

class PortalComponent extends StatefulWidget {
  @override
  _PortalComponentState createState() => _PortalComponentState();
}

class _PortalComponentState extends State<PortalComponent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(),
      body: PortalBody(),
    );
  }
}
