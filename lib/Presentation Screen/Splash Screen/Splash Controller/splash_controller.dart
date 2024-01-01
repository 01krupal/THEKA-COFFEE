import 'package:coffee_theka/AppConstantsFiles/pref_utils.dart';
import 'package:coffee_theka/AppRoutes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    changeRoute();
    super.onInit();
  }

  Future changeRoute() async {
    Future.delayed(const Duration(milliseconds: 2000), () async {
      if (await PrefUtils.sharedPreferences?.getBool('isLogin') ?? false) {
        Get.offAllNamed(AppRouts.signUpScreen);
      } else {
        Get.offAllNamed(AppRouts.loginScreen);
      }
    });
  }
}
