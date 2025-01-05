import 'package:bmi_app/features/navigation/route_strings.dart';
import 'package:bmi_app/features/screens/calculator_screen.dart';
import 'package:bmi_app/features/screens/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes{

  static Route<dynamic> route(RouteSettings settings) {
    switch(settings.name){

      case RouteStrings.base:
        return CupertinoPageRoute(builder:(_){
          return const CalculatorScreen();
        });

      case RouteStrings.resultScreen:
        return CupertinoPageRoute(builder: (_){
          return const ResultScreen();
        });

      default:
        return CupertinoPageRoute(builder: (_){
          return const CalculatorScreen();
        });
    }
  }
}