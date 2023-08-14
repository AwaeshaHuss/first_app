
import 'package:firstapp/screens/counter_screen.dart';
import 'package:firstapp/screens/home_screen.dart';
import 'package:firstapp/screens/second_screen.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> app_routes = {
  HomeScreen.id:(context) => const HomeScreen(),
  SecondScreen.id:(context) => const SecondScreen(),
  CounterScreen.id:(context) => CounterScreen(),
};