import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parttime/core/utils/app_fonts.dart';
import 'package:parttime/main.dart';
import 'package:parttime/views/Company/company_view.dart';

class Submit extends StatelessWidget {
  const Submit({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        Get.offAll(() => CompanyView());
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.lerp(
            Color(0xff6D00BB),
            Color(0xff320055),
            0.5,
          ),
          toolbarHeight: height! * 0.18,
          title: ListTile(
            contentPadding: EdgeInsets.all(0),
            title: Text(
              "Business Development Executive",
              style: TextStyle(fontSize: 22.sp, color: Colors.white),
            ),
            subtitle: Text(
              "TechFusion Solution",
              style: TextStyle(fontSize: 18.sp, color: Colors.white),
            ),
          ),
        ),
        body: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(20.sp),
                child: Row(
                  spacing: 9.w,
                  children: [
                    Container(
                      width: 54.w,
                      height: 54.h,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/person.png"),
                        ),
                      ),
                    ),

                    Column(
                      children: [
                        Text(
                          "Username name",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: AppFonts.calibriBold,
                          ),
                        ),
                        Text(
                          "Business Development",
                          style: TextStyle(
                            fontSize: 10.sp,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 18.w, right: 18.w, top: 25.h),
                child: Container(
                  alignment: Alignment.centerLeft,
                  width: width,
                  height: 44.h,
                  padding: EdgeInsets.all(8.w),

                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4.r),
                    color: Color.fromARGB(163, 172, 171, 186),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 10.w,
                    children: [
                      Image.asset("assets/images/file.png"),
                      Text(
                        "cv_user_resume_cv.pdf",
                        style: TextStyle(color: Colors.white, fontSize: 16.sp),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.w,
                  right: 18.w,
                  top: 25.h,
                  bottom: 100.h,
                ),
                child: DottedBorder(
                  color: const Color.fromARGB(
                    237,
                    255,
                    255,
                    255,
                  ), // Border color
                  strokeWidth: 1, // Border thickness
                  dashPattern: [7, 7], // Adjust the dash size
                  borderType: BorderType.RRect,
                  radius: Radius.circular(10.r), // Border radius

                  child: Container(
                    alignment: Alignment.center,
                    width: width,
                    padding: EdgeInsets.symmetric(vertical: 10.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      color: Color.fromARGB(163, 172, 171, 186),
                    ),
                    child: Column(
                      spacing: 5.h,
                      children: [
                        Text(
                          "Upload resume",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16.sp,
                          ),
                        ),
                        Text(
                          "PDF, DOC, DOCX",
                          style: TextStyle(
                            color: const Color.fromARGB(134, 255, 255, 255),
                            fontSize: 14.sp,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(
                    left: width! * 0.06,
                    right: width! * 0.06,
                  ),

                  width: width! * 0.8,
                  height: 42.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.r),
                    color: Color.fromARGB(163, 172, 171, 186),
                  ),
                  child: Text(
                    "Submit",
                    style: TextStyle(color: Colors.white, fontSize: 16.sp),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
