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
      appBar: buildAppBar(),
      body: new PortalComponent(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      title: Center(child: Text("帮助中心")),
      // actions: [
      //   IconButton(
      //     icon: Icon(Icons.search),
      //     onPressed: () {},
      //   ),
      // ],
    );
  }
}
