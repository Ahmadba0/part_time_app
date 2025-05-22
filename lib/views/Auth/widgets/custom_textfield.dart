import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parttime/core/utils/app_color.dart';

class CustomTextfield extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  const CustomTextfield({
    super.key,
    required this.hint,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: AppColor.offWhite, fontSize: 12.sp),
        filled: true,
        fillColor: AppColor.whiteGrey,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: BorderSide(width: 2, color: AppColor.offWhite),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18.r),
          borderSide: BorderSide(width: 2, color: AppColor.offWhite),
        ),
      ),
    );
  }
}
