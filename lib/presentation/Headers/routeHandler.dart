import 'package:flutter/material.dart';
import 'package:servdesk/presentation/Headers/RequestsHeader.dart';
import 'package:servdesk/presentation/Headers/HomeHeader.dart';
// import 'package:servdesk/share/logger/logger_utils.dart';

// var rootHandler = Handler(
//     handlerFunc: (BuildContext context, Map<String, List<String>> params) {
//   return RootComponent();
// });d

class RootComponent extends StatefulWidget {
  @override
  _RootComponentState createState() => _RootComponentState();
}

class _RootComponentState extends State<RootComponent> {
  late PageController pageController;
  int page = 0;
  // TransitionType transitionType = TransitionType.custom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: PageView(
        physics: NeverScrollableScrollPhysics(),
        children: <Widget>[
          new PortalComponent(),
          new RequestsComponent(),
        ],
        // controller: pageController,
        // onPageChanged: onPageChanged,
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
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

  BottomNavigationBar buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (value) {
        setState(() {
          // _selectedIndex = value;
          //
          print("打印当前的$value");
        });
      },
      currentIndex: page,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "门户"),
        BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "请求"),
        BottomNavigationBarItem(icon: Icon(Icons.notifications), label: "通知"),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "设置",
        ),
      ],
    );
  }

  // @override
  // void initState() {
  //   super.initState();
  //   pageController = PageController(initialPage: this.page);
  // }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void onTap(int index) {
    // pageController.jumpToPage(index);

    print(
      "打印当前的页面$index",
    );
  }

  // void onPageChanged(int page) {
  //   setState(() {
  //     this.page = page;
  //   });
  // }
}
