import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CompanyAppbar extends StatelessWidget {
  const CompanyAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Company",
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.white,
        fontSize: 28.sp,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
