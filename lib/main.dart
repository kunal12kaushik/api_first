import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_seth/resources/components/internet_exception_widget.dart';
import 'package:getx_api_seth/resources/getx_localization/languages.dart';
import 'package:getx_api_seth/resources/routes/routes.dart';

import 'package:getx_api_seth/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,

      getPages: AppRoutes.appRoutes(),
      home:  SplashScreen(),
    );
  }
}


