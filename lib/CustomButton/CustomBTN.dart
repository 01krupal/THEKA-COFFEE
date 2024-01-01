import 'package:flutter/material.dart';

class CustomBTN extends StatelessWidget {
  String buttonName;
  Color? buttonBackGroundColor;
  bool hasBorderRadius;
  BorderRadiusGeometry? borderRadius;
  double? fontSize;
  MaterialStateProperty<EdgeInsetsGeometry?>? padding;
  void Function()? onButtonTap;
  bool loading;
  TextEditingController? controller;

  CustomBTN(
      {required this.buttonName,
      this.buttonBackGroundColor,
      this.borderRadius,
      this.padding,
      this.fontSize,
      this.hasBorderRadius = false,
      this.loading = false,
      this.controller,
      this.onButtonTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child: ElevatedButton(
        onPressed: onButtonTap,
        child: loading
            ? CircularProgressIndicator()
            : Text(
                buttonName,
                style: TextStyle(
                    color: hasBorderRadius ? Colors.white : Colors.white,
                    fontSize: fontSize ?? 16,
                    fontWeight: FontWeight.w700),
              ),
        style: ButtonStyle(
            padding: padding ??
                MaterialStatePropertyAll(EdgeInsets.symmetric(vertical: 16)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
              borderRadius: borderRadius ?? BorderRadius.circular(10),
            )),
            backgroundColor: MaterialStatePropertyAll(Colors.pinkAccent[100])),
      ),
    );
  }
}
