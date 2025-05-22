import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyJobtitle extends StatelessWidget {
  final String jobtitle;
  const CompanyJobtitle({super.key, required this.jobtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 21.h),
      child: Text(
        jobtitle,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.white,
          fontSize: 22.sp,
          // fontFamily: AppFonts.calibriBold,
        ),
      ),
    );
  }
}
