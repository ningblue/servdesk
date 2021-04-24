import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:servdesk/pages/portals/presentation/views/portal_view.dart';
import 'package:servdesk/pages/requests/presentation/views/requests_view.dart';

class MainState {
  //底部导航栏索引
  RxInt bottomBarIndex = 0.obs;
}

//全局状态控制器
class GlobalStateController extends GetxController {
  MainState state = MainState();

  //改变底部导航栏索引
  changeBottomBarIndex(int index) {
    state.bottomBarIndex.value = index;
    print(state.bottomBarIndex.value);
  }
}

class HomeView extends StatelessWidget {
  //全局状态控制器
  final globalStateController = Get.put(GlobalStateController());
  var mainState = Get.find<GlobalStateController>().state;

  List bodyPageList = [
    PortalView(),
    RequestsView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Obx(() => bodyPageList[mainState.bottomBarIndex.value]),
      bottomNavigationBar: Obx(() => BottomNavigationBar(
            // 当前菜单下标
            currentIndex: mainState.bottomBarIndex.value,
            // 点击事件,获取当前点击的标签下标
            onTap: (int index) {
              globalStateController.changeBottomBarIndex(index);
            },
            iconSize: 30.0,
            // fixedColor: Colors.red,
            type: BottomNavigationBarType.fixed,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "门户"),
              BottomNavigationBarItem(icon: Icon(Icons.receipt), label: "请求"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.notifications), label: "通知"),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "设置",
              ),
            ],
          )),
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
