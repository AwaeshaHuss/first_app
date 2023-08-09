import 'package:firstapp/app_routes.dart'; // call a bre defiened flutter lib
import 'package:firstapp/screens/home_screen.dart';
import 'package:flutter/material.dart'; // this lib calls the be defiened flutter widget

main(){
  
  runApp(const MyApp()); // => is a function that calls the flutter app Widgets

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'firstApp',
      routes: app_routes,
       // app pages, to be placed here!
      home: const HomeScreen(), // => accepts widget
      // initialRoute: HomeScreen.id, // => accepts String
    );
  }
}
