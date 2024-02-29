import 'package:calculatarapp/provider/cal_provider.dart';
import 'package:calculatarapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => CalculatorProvider(),
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        title: 'Calculatar',
        home: HomeScreen()),
  ));
}
