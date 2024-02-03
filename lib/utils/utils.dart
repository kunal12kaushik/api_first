import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import 'package:getx_api_seth/resources/colors/app_colors.dart';


  // Utils is used, where we want to use same things again'n'again in our application
  class Utils {

  static void feildFocusChange(BuildContext context, FocusNode current, FocusNode nextFocus){
    current.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  static toastMessage(String message){
    Fluttertoast.showToast(
      msg: message,
      gravity:  ToastGravity.CENTER_RIGHT,
      backgroundColor: AppColors.blackColor,
    );
  }


  static toastMessageCenter(String message){
    Fluttertoast.showToast(
      msg: message,
      gravity:  ToastGravity.CENTER,
      backgroundColor: AppColors.blackColor,
    );
  }



  static snackBar(String title, String message){
    Get.snackbar(title, message);
  }

}