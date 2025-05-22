import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parttime/widgets/company_work_options.dart';

class ComapnyOptions extends StatelessWidget {
  final String type;
  final String time;
  final String salary;
  const ComapnyOptions({
    super.key,
    required this.type,
    required this.time,
    required this.salary,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 16.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CompanyWorkOptions(title: type),
          CompanyWorkOptions(title: time),
          CompanyWorkOptions(title: salary),
        ],
      ),
    );
  }
}
