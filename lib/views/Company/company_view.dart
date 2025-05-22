import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parttime/main.dart';
import 'package:parttime/views/Company/apply_submit.dart';
import 'package:parttime/views/Company/widgets/apply_button.dart';
import 'package:parttime/views/Company/widgets/comapny_job_describ.dart';
import 'package:parttime/views/Company/widgets/comapny_options.dart';
import 'package:parttime/views/Company/widgets/comapy_job_keys.dart';
import 'package:parttime/views/Company/widgets/company_appbar.dart';
import 'package:parttime/views/Company/widgets/company_jobtitle.dart';
import 'package:parttime/views/Company/widgets/company_location.dart';
import 'package:parttime/views/Company/widgets/company_name.dart';
import 'package:parttime/views/Home/home.dart';
import 'package:parttime/widgets/screen_background.dart';

class CompanyView extends StatelessWidget {
  const CompanyView({super.key});

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
            Positioned(
              top: height! * 0.01,
              left: width! * 0.02,
              right: width! * 0.02,
              child: SizedBox(
                height: height!,
                child: ListView(
                  children: [
                    CompanyAppbar(),
                    companyDetails(),
                    ApplyButton(
                      onTap: () {
                        debugPrint("Apply Button");
                        Get.offAll(() => Submit());
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container companyDetails() {
    return Container(
      width: width,
      margin: EdgeInsets.only(top: 20.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: Color.fromARGB(56, 172, 171, 186),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          CompanyJobtitle(jobtitle: "Business Development Executive"),
          CompanyName(comName: "TechFusion Solution"),
          CompanyLocation(comlocation: "(Kingdom Saudia Arabia,KSA)"),
          ComapnyOptions(
            type: "Remote",
            time: "Fulltime",
            salary: "300-1200\$",
          ),
          ComapnyJobDescrib(
            text:
                "As a Business Development Executive, you play a pivotal role in our organization's growth and success. identify and capitalize on new business opportunities, foster partnerships, and enhance our market presence.",
          ),
          CompanyJobKeys(
            keys: [
              "Market Research",
              "Lead Generation",
              "Client Relationship Management",
              "Sales and Revenue Growth",
              "Partnerships and Alliances",
              "Product Knowledge",
              "Sales Pipeline Management",
            ],
          ),
          SizedBox(height: 24.h),
          Padding(
            padding: EdgeInsets.only(left: 23.w, bottom: 10.h),
            child: Text(
              "Work Location: \nRemote Speak with the employer +9884848383",
              style: TextStyle(color: Colors.white, fontSize: 15.sp),
            ),
          ),
        ],
      ),
    );
  }
}
