import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getx_api_seth/resources/colors/app_colors.dart';

import '../resources/components/general_exception_widget.dart';
import '../resources/components/internet_exception_widget.dart';
import '../viewmodel/services/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashService splashScreen = SplashService();

  @override
  void initState() {
    super.initState();
    splashScreen.isLogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(child: Text("Splash Screen")),
    );
  }
}
