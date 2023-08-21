import 'package:firstapp/controllers/api_controller.dart';
import'package:flutter/material.dart';
import 'package:get/instance_manager.dart';

class APiTestScreen extends StatelessWidget {
  APiTestScreen({super.key});

  APiController controller = Get.put(APiController());
  // Di => Dependancy Injiction => الحقن

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0x5BFFFFFF),
    );
  }
}