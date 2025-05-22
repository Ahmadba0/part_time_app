import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomLoginHeader extends StatelessWidget {
  const CustomLoginHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Welcome Back!",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 36.sp,
            fontFamily: "CalibriBold",
            color: Colors.white,
          ),
        ),
        SizedBox(height: 40.h),
        Text(
          "Signin",
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 32.sp, color: Colors.white),
        ),
      ],
    );
  }
}
