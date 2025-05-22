import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyWorkOptions extends StatelessWidget {
  final String title;
  const CompanyWorkOptions({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 7.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: const Color.fromARGB(51, 255, 255, 255),
        borderRadius: BorderRadius.circular(6.r),
        border: Border.all(
          width: 1,
          color: const Color.fromARGB(70, 255, 255, 255),
        ),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 11.sp, color: Colors.white),
      ),
    );
  }
}
