import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api_seth/resources/components/round_button_widget.dart';
import 'package:getx_api_seth/utils/utils.dart';
import 'package:getx_api_seth/viewmodel/controller/login_view_model.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginVM = Get.put(LoginViewModel());
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(

      appBar: AppBar(
         backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text('Login', style: TextStyle(color: Colors.black,fontSize: 30),),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Form(
          key: _formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginVM.emailController.value,
                focusNode: loginVM.emailFocusNode.value,
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar('Error', 'Enter Valid Email Address');
                  }
                },
                onFieldSubmitted: (value) {
                  Utils.feildFocusChange(context, loginVM.emailFocusNode.value,
                      loginVM.passwordFocusNode.value);
                },
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(
                height: screenHeight * 0.05,
              ),
              TextFormField(
                controller: loginVM.passwordController.value,
                focusNode: loginVM.passwordFocusNode.value,
                // obscureText: true,
                // obscuringCharacter: '',
                validator: (value) {
                  if (value!.isEmpty) {
                    Utils.snackBar('Password', 'Enter Password');
                  }
                },
                onFieldSubmitted: (value) {
                  Utils.feildFocusChange(context,  loginVM.emailFocusNode.value,  loginVM.passwordFocusNode.value);
                },
                decoration: InputDecoration(

                  hintText: 'Enter Password ',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: screenHeight*0.04),
              Obx(() => RoundButton(
                    title: "Login",
                    loading: loginVM.loading.value,
                    onPress: () {
                      if (_formkey.currentState!.validate()) {}
                    },
                    width: 200,
                height: 40,
                    buttonColor: Colors.tealAccent,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
