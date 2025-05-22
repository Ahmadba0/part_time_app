import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parttime/core/utils/app_fonts.dart';
import 'package:parttime/main.dart';
import 'package:parttime/views/Home/home.dart';
import 'package:parttime/views/Settings/information.dart';
import 'package:parttime/views/Settings/widgets/profile_option.dart';
import 'package:parttime/widgets/screen_background.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        Get.offAll(() => HomeView());
      },
      child: Scaffold(
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
              top: 230.h,
              left: (width! / 2) - 33.w,
              child: Text(
                "User name",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontFamily: AppFonts.calibriBold,
                ),
              ),
            ),
            Positioned(
              top: 250.h,
              left: width! * 0.39,

              child: Text(
                "UI/UX Desginer",
                style: TextStyle(
                  color: const Color.fromARGB(158, 255, 255, 255),
                  fontSize: 14.sp,
                  fontFamily: AppFonts.calibri,
                ),
              ),
            ),
            Positioned(
              top: height! * 0.45,
              right: width! * 0.02,
              left: width! * 0.02,

              child: Column(
                spacing: 16.h,
                children: [
                  ProfileOption(
                    icon: Icon(Icons.edit_document, color: Colors.white),
                    title: "My Cv",
                  ),
                  ProfileOption(
                    onTap: () {
                      Get.offAll(() => Information());
                    },
                    icon: Icon(Icons.person_outline, color: Colors.white),
                    title: "Sign in",
                  ),
                  ProfileOption(
                    icon: Icon(
                      Icons.request_page_outlined,
                      color: Colors.white,
                    ),
                    title: "Requestes",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
