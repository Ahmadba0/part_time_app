import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parttime/views/Auth/signup.dart';
import 'package:parttime/views/Auth/widgets/custom_button.dart';
import 'package:parttime/views/Auth/widgets/custom_checkbox.dart';
import 'package:parttime/views/Auth/widgets/custom_login_header.dart';
import 'package:parttime/views/Auth/widgets/custom_textfield.dart';
import 'package:parttime/views/Home/home.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            CustomLoginHeader(),
            SizedBox(height: 56.h),
            Form(
              child: Column(
                children: [
                  CustomTextfield(
                    hint: "User name",
                    controller: TextEditingController(),
                  ),
                  SizedBox(height: 30.h),
                  CustomTextfield(
                    hint: "Password",
                    controller: TextEditingController(),
                  ),
                  CustomCheckbox(value: false),

                  CustomButton(
                    text: "Sign in",
                    onTap: () {
                      Get.offAll(() => HomeView());
                    },
                  ),
                  SizedBox(height: MediaQuery.sizeOf(context).height * 0.09),
                  GestureDetector(
                    onTap: () {
                      Get.offAll(() => Signup());
                    },
                    child: Text(
                      "Don't have an account? Signup!",
                      style: TextStyle(color: Colors.white, fontSize: 14.sp),
                    ),
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
