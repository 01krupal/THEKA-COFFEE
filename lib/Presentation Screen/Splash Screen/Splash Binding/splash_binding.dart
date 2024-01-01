import 'package:coffee_theka/Presentation%20Screen/Splash%20Screen/Splash%20Controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SplashController());
  }
}
