import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parttime/core/utils/app_color.dart';
import 'package:parttime/main.dart';

class CustomSearchBar extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? onTap;
  final void Function()? onFieldTap;
  final void Function(String?)? onChanged;
  const CustomSearchBar({
    super.key,
    this.onTap,
    required this.controller,
    this.onChanged,
    this.onFieldTap,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: height! * 0.17,
      right: width! * 0.05,
      left: width! * 0.05,

      child: SizedBox(
        width: width! * 0.9,
        child: TextFormField(
          onTap: onFieldTap,
          onChanged: onChanged,
          controller: controller,
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(
            icon: GestureDetector(
              onTap: onTap,
              child: Container(
                width: 37.w,
                height: 39.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(11.r),
                  color: AppColor.whiteGrey,
                ),
                child: Image.asset("assets/images/elements.png"),
              ),
            ),
            hintText: "Search",
            hintStyle: TextStyle(color: Colors.white, fontSize: 12.sp),
            filled: true,
            fillColor: AppColor.whiteGrey,
            prefixIcon: Icon(
              CupertinoIcons.search,
              size: 15.sp,
              color: Color(0xffCBCBCB),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10.r),
            ),
          ),
        ),
      ),
    );
  }
}
