import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import 'package:parttime/views/Home/home.dart';

class LoginController extends GetxController {
  TextEditingController? usernameController;
  TextEditingController? passowrdController;
  GlobalKey<FormState> formstate = GlobalKey();

  login() async {
    if (usernameController!.text != "" || passowrdController!.text != "") {
      try {
        // if (await checkInternet()) {

        var url = Uri.parse('http://10.0.2.2:8000/api/login');

        var body = {
          'user_name': usernameController!.text,
          'password': passowrdController!.text,
        };

        var req = http.MultipartRequest('POST', url);
        // req.headers.addAll(headersList);
        req.fields.addAll(body);

        var res = await req.send();
        final resBody = await res.stream.bytesToString();
        //

        Map<String, dynamic> result = jsonDecode(resBody);
        if (result['status'] == true) {
          Get.offAll(HomeView());
        } else {
          Get.snackbar("Warning", 'Invalid credentials');
        }

        // } else {
        //   Get.snackbar("Warning", 'Check your connection in internet');
        // }
      } catch (e) {
        print(e.toString());
      }
    } else {
      Get.snackbar("Warning", "the field is empty");
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    usernameController = TextEditingController();
    passowrdController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController!.dispose();
    passowrdController!.dispose();
  }
}
