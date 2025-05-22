import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ComapnyJobDescrib extends StatelessWidget {
  final String text;
  const ComapnyJobDescrib({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 22.w),
          child: Text(
            "Job Description:",
            textAlign: TextAlign.start,
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 23.w, right: 8.w, bottom: 22.h),
          child: Text(
            text,
            textAlign: TextAlign.start,
            softWrap: true,

            style: TextStyle(color: Colors.white, fontSize: 14.sp),
          ),
        ),
      ],
    );
  }
}
