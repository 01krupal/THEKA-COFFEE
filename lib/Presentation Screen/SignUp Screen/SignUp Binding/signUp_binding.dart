import 'package:coffee_theka/Presentation%20Screen/SignUp%20Screen/SignUp%20Controller/signUp_controller.dart';
import 'package:get/get.dart';

class SignUpBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => SignUpController());
  }

}