import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cupertino/app/routes/app_pages.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  void _showActionSheet(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (context) => CupertinoActionSheet(
        title: const Text("Action Sheet"),
        message: const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        actions: [
          CupertinoActionSheetAction(
            isDefaultAction: true,
            onPressed: () {},
            child: const Text("Default Action"),
          ),
          CupertinoActionSheetAction(
            onPressed: () {},
            child: const Text("Normal Action"),
          ),
          CupertinoActionSheetAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as delete or exit and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {},
            child: const Text("Destructive Action"),
          ),
        ],
      ),
    );
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoDialog(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        title: const Text("Alert Dialog"),
        content: const Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        actions: [
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () {},
            child: const Text('No'),
          ),
          // ? If there are >= 2 options, button direction change to vertical
          // CupertinoDialogAction(
          //   onPressed: () {},
          //   child: const Text("or"),
          // ),
          CupertinoDialogAction(
            /// This parameter indicates the action would perform
            /// a destructive action such as deletion, and turns
            /// the action's text color to red.
            isDestructiveAction: true,
            onPressed: () {},
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cupertino Flutter'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CupertinoButton.filled(
                onPressed: () {
                  Get.toNamed(Routes.TAB_PAGE);
                },
                child: const Text("Tab Bar"),
              ),
              const SizedBox(height: 20),
              CupertinoButton.filled(
                onPressed: () {
                  _showActionSheet(context);
                },
                child: const Text("Action Sheet"),
              ),
              const SizedBox(height: 20),
              CupertinoButton.filled(
                onPressed: () {
                  _showAlertDialog(context);
                },
                child: const Text("Alert Dialog"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
