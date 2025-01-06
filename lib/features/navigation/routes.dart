import 'package:bmi_app/features/navigation/route_strings.dart';
import 'package:bmi_app/features/screens/bmiScreens/calculator_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/bmiScreens/result_screen.dart';

class Routes{

  static Route<dynamic> route(RouteSettings settings) {
    switch(settings.name){

      case RouteStrings.base:
        return CupertinoPageRoute(builder:(_){
          return const CalculatorScreen();
        });

      case RouteStrings.resultScreen:
        return CupertinoPageRoute(builder: (_){
          return ResultScreen(resultsParams: settings.arguments as ResultsParams,);
        });

      default:
        return CupertinoPageRoute(builder: (_){
          return const CalculatorScreen();
        });
    }
  }
}