import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:technical_task/assignment3/view/product_page.dart';
import 'package:technical_task/setting/all_assignment_screen.dart';
import 'package:technical_task/setting/hive_setting.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // Called Hive Settings
  await HiveSettings.hiveSetting();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: AllAssignmentScreen(),
      builder: EasyLoading.init(),
    );
  }
}
