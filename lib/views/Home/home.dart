import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:parttime/controller/home_controller.dart';
import 'package:parttime/main.dart';
import 'package:parttime/views/Company/company_view.dart';
import 'package:parttime/views/Home/widgets/company_card.dart';
import 'package:parttime/views/Home/widgets/custom_search_bar.dart';
import 'package:parttime/views/Settings/profile.dart';
import 'package:parttime/widgets/screen_background.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(106, 255, 255, 255),
        onPressed: () {
          Get.offAll(() => Profile());
        },
        child: Icon(Icons.settings, color: Color(0xffffffff)),
      ),
      body: Stack(
        children: [
          ScreenBackground(),
          Positioned(
            top: height! * 0.08,
            left: width! * 0.4,
            child: Text(
              "Home",
              style: TextStyle(color: Colors.white, fontSize: 28.sp),
            ),
          ),

          GetBuilder<HomeController>(
            init: HomeController(),
            builder: (controller) {
              return CustomSearchBar(
                controller: controller.search,
                onTap: () {
                  controller.openFilterDialog(context);
                },
              );
            },
          ),
          Positioned(
            top: height! * 0.25,
            right: 20.w,
            left: 20.w,
            child: SizedBox(
              height: height! - (height! * 0.25),
              child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return CompanyCard(
                    onTap: () {
                      Get.offAll(() => CompanyView());
                    },
                    title: "Mobile application",
                    subtitle: "Proffessional it agency",
                    time: "Full-time",
                    place: "Remote",
                    price: "350-1200\$ month",
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
//MVC
//MODEL - VIEW - CONTROLLER

//
