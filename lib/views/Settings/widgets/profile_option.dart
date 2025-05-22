import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parttime/main.dart';

class ProfileOption extends StatelessWidget {
  final Icon icon;
  final String title;
  final void Function()? onTap;
  const ProfileOption({
    super.key,
    required this.icon,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 43.h,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white, width: 1),
          borderRadius: BorderRadius.circular(6.r),
          color: Color.fromARGB(115, 187, 187, 187),
        ),
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 0),
          leading: icon,
          title: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 18.sp),
          ),
          trailing: Icon(
            Icons.arrow_forward_ios,
            color: Color(0xffF39C12),
            size: 16.sp,
          ),
        ),
      ),
    );
  }
}
