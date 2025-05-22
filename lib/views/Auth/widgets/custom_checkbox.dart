import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCheckbox extends StatelessWidget {
  final bool value;
  final void Function(bool?)? onChanged;
  const CustomCheckbox({super.key, required this.value, this.onChanged});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 18.h, bottom: 95.h),
      child: Row(
        children: [
          Checkbox(
            fillColor: WidgetStatePropertyAll(Color(0xffDCDBDB)),
            value: value,
            onChanged: onChanged,
          ),
          Text(
            "Show Password",
            style: TextStyle(color: Colors.white, fontSize: 12.sp),
          ),
        ],
      ),
    );
  }
}
