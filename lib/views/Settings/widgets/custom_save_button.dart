import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parttime/main.dart';

class CustomSaveButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomSaveButton({super.key, this.onTap, required this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 12.h,
          left: width! * 0.06,
          right: width! * 0.06,
        ),

        width: width! * 0.8,
        height: 42.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.r),
          color: const Color.fromARGB(60, 255, 255, 255),
        ),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 16.sp),
        ),
      ),
    );
  }
}
