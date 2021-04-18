import 'package:flutter/material.dart';
import 'package:fluro/fluro.dart';
import 'components/requestsBody.dart';

var requestsHandler = Handler(
    handlerFunc: (BuildContext context, Map<String, List<String>> params) {
  return RequestsComponent();
});



class RequestsComponent extends StatefulWidget {
  @override
  _RequestsComponentState createState() => _RequestsComponentState();
}

class _RequestsComponentState extends State<RequestsComponent> {
  // TransitionType transitionType = TransitionType.native;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RequestsBody(),
    );
  }
}
