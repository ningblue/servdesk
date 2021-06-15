import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servdesk/utils/search.dart';

final List<String> entries = <String>['A', 'B', 'C'];
final List<int> colorCodes = <int>[600, 500, 100];

class RequestsView extends StatefulWidget {
  @override
  _RequestsViewState createState() => _RequestsViewState();
}

class _RequestsViewState extends State<RequestsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: new IconButton(
        //   icon: new Icon(Icons.arrow_back_ios),
        //   onPressed: () => {Get.back()},
        // ),
        centerTitle: true,
        title: Text("请求"),
      ),
      body: Padding(padding: const EdgeInsets.all(8), child: _dasdasdas()
          // //
          // Column(
          //   children: [
          //   SearchField(),
          //      Container(child: ),
          // //     Container(child: _dasdasdas()),
          //   ],
          // //  SearchField(),

          // ),
          ),
    );
  }

  Widget _dasdasdas() {
    return GestureDetector(
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: entries.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 50,
              color: Colors.amber[colorCodes[index]],
              child: Center(child: Text('Entry ${entries[index]}')),
            );
          }),
      onTap: () {
        print("点击了数据");
        // Navigator.push(
        //   context,
        //   MaterialPageRoute(builder: (context) => getFormPage(context, index)),
        // );
      },
    );
  }
}
