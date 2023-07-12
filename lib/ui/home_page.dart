import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_storage/services/notification_services.dart';
import 'package:flutter_storage/services/theme_services.dart';
import 'package:get/get.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var notifyHelper;

  @override
  void initState() {
    super.initState();
    notifyHelper = NotifyHelper();
    notifyHelper.initializeNotification();
    notifyHelper.requestIOSPermissions();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
      body: Column(
        children: [
          Text(
            "Theme Data",
            style: TextStyle(
              fontSize: 30
            ),
          )
        ],
      ),
    );
  }

  _appBar() {
    return AppBar(
      leading: GestureDetector(
        onTap: (){
          print("object");
          ThemeServices().switchTheme();
          notifyHelper.displayNotification(
            title: "Theme Changed",
            body: Get.isDarkMode? "Activated Light Theme" : "Activated Dark Theme"
          );
          notifyHelper.scheduledNotification();
        },
        child: Icon(Icons.nightlight_round, size: 20,),
      ),
      actions: [
        Icon(Icons.person, size: 20,),
        SizedBox(width: 20,)
      ],
    );
  }
}