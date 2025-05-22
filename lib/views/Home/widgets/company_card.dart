import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parttime/core/utils/app_fonts.dart';
import 'package:parttime/main.dart';
import 'package:parttime/views/Home/widgets/company_card_options.dart';

class CompanyCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String time;
  final String place;
  final String price;
  final void Function()? onTap;
  const CompanyCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.time,
    required this.place,
    required this.price,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: 92.h,
        margin: EdgeInsets.only(bottom: 15.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.r),
          color: const Color.fromARGB(97, 255, 255, 255),
        ),
        child: Column(
          children: [
            ListTile(
              leading: Image.asset("assets/images/company.png"),
              title: Text(
                title,
                style: TextStyle(
                  fontSize: 14.sp,
                  color: Colors.white,
                  fontFamily: AppFonts.calibriBold,
                ),
              ),
              subtitle: Text(
                subtitle,
                style: TextStyle(
                  color: const Color.fromARGB(197, 255, 255, 255),
                ),
              ),
              trailing: Icon(Icons.bookmark, color: Color(0xffFF6F00)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 39.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CompanyCardOptions(title: time),
                  CompanyCardOptions(title: place),

                  CompanyCardOptions(title: price),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
