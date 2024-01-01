import 'package:coffee_theka/AppConstantsFiles/pref_utils.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class InitialBinding extends Bindings{

  @override
  void dependencies() {
    // TODO: implement dependencies
    WidgetsFlutterBinding.ensureInitialized();
    Get.put(PrefUtils());
  }
}