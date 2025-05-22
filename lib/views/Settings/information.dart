import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:parttime/main.dart';
import 'package:parttime/views/Settings/widgets/custom_info_field.dart';
import 'package:parttime/views/Settings/widgets/custom_save_button.dart';
import 'package:parttime/widgets/screen_background.dart';

class Information extends StatelessWidget {
  const Information({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          ScreenBackground(),
          Container(
            width: width,
            height: 190.h,
            decoration: BoxDecoration(color: Color.fromARGB(150, 82, 0, 141)),
          ),
          Positioned(
            top: 150.h,
            left: (width! / 2) - 40.w,
            child: SizedBox(
              width: 80.w,
              child: AspectRatio(
                aspectRatio: 1 / 1,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/person.png"),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.circular(75.r),
                    border: Border.all(color: Color(0xffF39C12), width: 2),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: height! / 2.7,
            child: SizedBox(
              width: width,
              height: height,
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 8.w),
                child: Column(
                  spacing: 25.h,
                  children: [
                    CustomInfoField(
                      hint: "User name",
                      controller: TextEditingController(),
                    ),
                    CustomInfoField(
                      hint: "Email or Phone number",
                      controller: TextEditingController(),
                    ),
                    CustomInfoField(
                      hint: "Country",
                      controller: TextEditingController(),
                    ),
                    CustomInfoField(
                      hint: "Password",
                      controller: TextEditingController(),
                    ),
                    CustomInfoField(
                      hint: "Jobtitle",
                      controller: TextEditingController(),
                    ),

                    CustomSaveButton(title: "Save"),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
