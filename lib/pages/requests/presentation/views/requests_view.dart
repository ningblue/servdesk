import 'package:flutter/material.dart';
import 'package:servdesk/utils/search.dart';

class RequestsView extends StatefulWidget {
  @override
  _RequestsViewState createState() => _RequestsViewState();
}

class _RequestsViewState extends State<RequestsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("请求"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SearchField(),
          ],
        ),
      ),
    );
  }
}
