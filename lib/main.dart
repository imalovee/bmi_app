import 'package:bmi_app/features/navigation/route_strings.dart';
import 'package:bmi_app/features/navigation/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
     onGenerateRoute: Routes.route,
      initialRoute: RouteStrings.base,
    );
  }
}

//Link to the Images on google drive
//https://drive.google.com/drive/folders/1um8ku-GDE2gkWiyzZz0hjKgXX9Q6xD0H?usp=drive_link