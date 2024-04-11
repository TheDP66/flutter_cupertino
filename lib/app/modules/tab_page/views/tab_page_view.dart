import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/tab_page_controller.dart';

class TabPageView extends GetView<TabPageController> {
  const TabPageView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TabPageView'),
        centerTitle: true,
      ),
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.white,
          activeColor: CupertinoColors.systemBlue,
          inactiveColor: CupertinoColors.systemGrey.withOpacity(0.6),
          height: 50,
          onTap: (value) {
            print("Clicked tab $value");
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.conversation_bubble),
              label: "Chat",
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.person),
              label: "Profile",
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                  builder: (context) => const Text("Home Page"));
            case 1:
              return CupertinoTabView(
                  builder: (context) => const Text("Chat Page"));
            case 2:
              return CupertinoTabView(
                  builder: (context) => const Text("Profile Page"));
            default:
              return CupertinoTabView(
                  builder: (context) => const Text("Home Page"));
          }
        },
      ),
    );
  }
}
