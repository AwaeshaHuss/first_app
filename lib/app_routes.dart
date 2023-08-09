import 'package:firstapp/screens/home_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> app_routes = {
  HomeScreen.id:(context) => const HomeScreen(),
};