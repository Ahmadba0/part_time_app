import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyName extends StatelessWidget {
  final String comName;
  const CompanyName({super.key, required this.comName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 23.w, bottom: 21.h),
      child: Text(
        comName,
        textAlign: TextAlign.start,
        style: TextStyle(color: Colors.white, fontSize: 20.sp),
      ),
    );
  }
}
