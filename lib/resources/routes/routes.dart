import 'package:get/get.dart';
import 'package:getx_api_seth/resources/routes/routes_name.dart';
import 'package:getx_api_seth/view/login/login_view.dart';
import 'package:getx_api_seth/view/splash_screen.dart';

class AppRoutes {
  static appRoutes() =>
      [

        GetPage(
          name: RoutesName.splashScreen,
          page: () => SplashScreen(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: RoutesName.loginView,
          page: () => LoginView(),
          transitionDuration: Duration(microseconds: 250),
          transition: Transition.rightToLeft,
        ),


      ];
}
