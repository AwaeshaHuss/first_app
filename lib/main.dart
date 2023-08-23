import 'package:firstapp/app_routes.dart'; // call a bre defiened flutter lib
import 'package:firstapp/screens/api_test_screen.dart';
import 'package:firstapp/screens/home_screen.dart';
import 'package:firstapp/screens/read_write_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart'; // this lib calls the be defiened flutter widget

main(){
  
  runApp( MyApp()); // => is a function that calls the flutter app Widgets

} // => the main or starting point for the flutter application.

// StatelessWidget => static UI
// StatefulWidget => dynamic UI
// state == data
// what is the state of this class || widget => data of this class || widget
// state management == data management

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'firstApp',
      routes: app_routes,
       // app pages, to be placed here!
      home: ReadWriteScreen(), // => accepts widget
      // initialRoute: HomeScreen.id, // => accepts String
    );
  }
}
