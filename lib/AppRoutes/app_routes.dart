import 'package:coffee_theka/Presentation%20Screen/Login%20Screen/login_screen.dart';
import 'package:coffee_theka/Presentation%20Screen/SignUp%20Screen/SignUp%20Binding/signUp_binding.dart';
import 'package:coffee_theka/Presentation%20Screen/SignUp%20Screen/signUp_screen.dart';
import 'package:coffee_theka/Presentation%20Screen/Splash%20Screen/Splash%20Binding/splash_binding.dart';
import 'package:coffee_theka/Presentation%20Screen/Splash%20Screen/splash_screen.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';


class AppRouts {
  static String splashScreen = '/Splash_Screen';
  static String loginScreen = '/Login_Scren';
  static String signUpScreen = '/SignUp_Screen';

  static List<GetPage> pages = [
    GetPage(
        name: splashScreen,
        page: () => SplashScreen(),
        bindings: [SplashBinding()],
        transitionDuration: const Duration(milliseconds: 400)),
    GetPage(
        name: loginScreen,
        page: () => LoginScreen(),
        bindings: [SplashBinding()],
        transitionDuration: const Duration(milliseconds: 400)),


    GetPage(
        name: signUpScreen,
        page: () => SignUpScreen(),
        bindings: [SignUpBinding()],
        transitionDuration: const Duration(milliseconds: 400))
  ];
}
