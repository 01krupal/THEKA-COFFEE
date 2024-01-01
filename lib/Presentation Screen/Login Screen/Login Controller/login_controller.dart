import 'dart:convert';
import 'package:coffee_theka/Api%20Services/api_service.dart';
import 'package:coffee_theka/AppConstantsFiles/pref_utils.dart';
import 'package:coffee_theka/AppRoutes/app_routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;


class LoginController extends GetxController {
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  var isLoading = false.obs;
  RxBool passToggle = true.obs;



  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
  }

  callLoginApi() {
    if (emailTextEditingController.text.isEmpty) {
      Get.snackbar("error", "Please enter email");
      return;
    }
    if (!RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(emailTextEditingController.text)) {
      Get.snackbar("error", "Please enter valid email");
      return;
    }

    if (passwordTextEditingController.text.isEmpty) {
      Get.snackbar("error", "Please enter password");
      return;
    }

    callApi(
        email: emailTextEditingController.text,
        password: passwordTextEditingController.text);
  }

  callApi({required String email, required String password}) async {
    isLoading.value = true;
    final response = await http.post(Uri.parse(
        "${ApiService.loginUrl}?email=${email}&password=${password}"));
    print(response.body);
    if (response.statusCode == 200 &&
        jsonDecode(response.body).runtimeType != String &&
        jsonDecode(response.body)['status'] == 'success') {
      isLoading.value = false;
      Get.snackbar("success", "Login successfully");
      await PrefUtils.sharedPreferences?.setBool('isLogin', true);
      Get.offNamed(AppRouts.signUpScreen);
    } else {
      isLoading.value = false;
      Get.snackbar("error", "${jsonDecode(response.body)}");
    }
  }
}
