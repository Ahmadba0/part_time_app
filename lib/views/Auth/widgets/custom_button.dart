import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parttime/core/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const CustomButton({super.key, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: MediaQuery.sizeOf(context).height * 0.068,
        width: MediaQuery.sizeOf(context).width * 0.8,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.r),
          color: AppColor.whiteGrey,
        ),
        child: Text(
          text,
          style: TextStyle(color: Colors.white, fontSize: 24.sp),
        ),
      ),
    );
  }
}
