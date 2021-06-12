import 'package:flutter/material.dart';
import 'package:servdesk/infrastructure/profiles/profile_menu.dart';
import 'package:servdesk/infrastructure/profiles/profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 20),
        child: GestureDetector(
          child: Column(
            children: [
              ProfilePic(
                key: null,
              ),
              SizedBox(height: 20),
              ProfileMenu(
                text: "我的信息",
                icon: "assets/icons/User Icon.svg",
                press: () => {},
              ),
              ProfileMenu(
                text: "通知",
                icon: "assets/icons/Bell.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "设置",
                icon: "assets/icons/Settings.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "帮助中心",
                icon: "assets/icons/Question mark.svg",
                press: () {},
              ),
              ProfileMenu(
                text: "退出",
                icon: "assets/icons/Log out.svg",
                press: () => {
                  showDialog<String>(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: const Text('是否退出'),
                      content: const Text('退出未保存信息,将会丢失(随便提示)'),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'Cancel'),
                          child: const Text('取消'),
                        ),
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('确定'),
                        ),
                      ],
                    ),
                  ),
                },
              ),
            ],
          ),
          onTap: () {},
        ));
  }
}
