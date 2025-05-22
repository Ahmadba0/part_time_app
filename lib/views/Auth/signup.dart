import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parttime/views/Auth/login.dart';
import 'package:parttime/views/Auth/widgets/custom_button.dart';
import 'package:parttime/views/Auth/widgets/custom_textfield.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvokedWithResult: (didPop, result) {
        Get.offAll(() => Login());
      },
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView(
            padding: EdgeInsets.only(
              right: MediaQuery.sizeOf(context).width * 0.05,
              left: MediaQuery.sizeOf(context).width * 0.05,
              top: MediaQuery.sizeOf(context).height * 0.117,
            ),
            children: [
              Text(
                "Let's create your account in Job Finder!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 30.sp,
                  fontFamily: "CalibriBold",
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 40.h),
              Text(
                "Sign up",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 32.sp, color: Colors.white),
              ),

              Padding(
                padding: EdgeInsets.only(top: 20.h),
                child: Form(
                  child: Column(
                    spacing: 30.h,
                    children: [
                      CustomTextfield(
                        hint: "User name",
                        controller: TextEditingController(),
                      ),
                      CustomTextfield(
                        hint: "Email or phone number",
                        controller: TextEditingController(),
                      ),
                      CustomTextfield(
                        hint: "Country",
                        controller: TextEditingController(),
                      ),
                      CustomTextfield(
                        hint: "Password",
                        controller: TextEditingController(),
                      ),
                      CustomTextfield(
                        hint: "Job title",
                        controller: TextEditingController(),
                      ),
                      CustomButton(text: "Sign up", onTap: () {}),
                    ],
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
