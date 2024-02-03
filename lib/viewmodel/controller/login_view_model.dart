import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:getx_api_seth/repository/login_repository/login_repository.dart';
import 'package:getx_api_seth/utils/utils.dart';

class LoginViewModel extends GetxController {
  final _api = LoginReposiroty();
  final emailController = TextEditingController().obs ;
  final passwordController = TextEditingController().obs ;


  final emailFocusNode = FocusNode().obs ;
  final passwordFocusNode = FocusNode().obs ;


  RxBool loading = false.obs ;

void loginApi(){
  loading.value = true;
  Map data = {
    'email':  emailController.value.text,
    'password':  passwordController.value.text,

  };
_api.loginApi(data).then((value) {
  loading.value = false;

  Utils.snackBar('Login', 'Login Successfully');
  
}).onError((error, stackTrace) {
  loading.value = false;

  Utils.snackBar('Error', error.toString());
});
}
}