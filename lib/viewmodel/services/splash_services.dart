import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_api_seth/resources/routes/routes_name.dart';
import 'package:getx_api_seth/view/login/login_view.dart';

class SplashService{
  void isLogin(){

    Timer(Duration(seconds: 3), ()=> Get.toNamed(RoutesName.loginView));
  }
}