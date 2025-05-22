import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyLocation extends StatelessWidget {
  final String comlocation;
  const CompanyLocation({super.key, required this.comlocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 22.h),
      child: Text(
        comlocation,
        textAlign: TextAlign.center,

        style: TextStyle(color: Color(0xff535353), fontSize: 12.sp),
      ),
    );
  }
}
