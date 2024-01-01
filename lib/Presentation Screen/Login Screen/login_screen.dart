import 'package:coffee_theka/AppConstantsFiles/string_constants.dart';
import 'package:coffee_theka/CustomButton/CustomBTN.dart';
import 'package:coffee_theka/Presentation%20Screen/Login%20Screen/Login%20Controller/login_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetWidget<LoginController> {
   LoginScreen({super.key});

  final LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 300,
            decoration: const BoxDecoration(
                image:
                    DecorationImage(image: AssetImage("assets/img1.jpg"))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center      ,
              children: [
                Center(
                  child: Image.asset("assets/img2.jpg"),
                ),
              ],
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Text("Login",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 59,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black45),
              child: TextFormField(
                controller: controller.emailTextEditingController,
                style: TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: "email",
                    hintStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 16),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    )),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 25),
            child: Container(
              height: 59,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey),
              child: Obx(
                    () => TextFormField(controller: controller.passwordTextEditingController,
                  obscureText: controller.passToggle.value,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                      hintText: "password",
                      hintStyle: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w400,
                          fontSize: 16),

                      suffixIcon: InkWell(
                        onTap: () {
                         // controller.toggleObscure();
                        },
                        child: Icon(
                          controller.passToggle.value
                              ? Icons.remove_red_eye_outlined
                              : CupertinoIcons.eye_slash,
                          size: 20,
                        ),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                            color: Colors.black45,
                            width: 0.2),
                      )),
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 25),
            child: Text("Forget Password?",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.black,),),
          ),
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CustomBTN(
              buttonName: "Login",
              onButtonTap: () {
                controller.callLoginApi();
              },
            ),
          ),

        ],
      ),
    );
  }
}
