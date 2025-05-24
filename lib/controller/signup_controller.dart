import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:parttime/core/function/checkINternet.dart';
import 'package:parttime/views/Auth/login.dart';

class SignupController extends GetxController {
  TextEditingController? usernameController;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? identifierController;
  TextEditingController? jobTitleController;
  TextEditingController? countryController;
  GlobalKey<FormState> formstate = GlobalKey();

  signup() async {
    try {
      // if (await checkInternet()) {
      if (usernameController!.text.isNotEmpty ||
          emailController!.text.isNotEmpty ||
          passwordController!.text.isNotEmpty ||
          identifierController!.text.isNotEmpty ||
          jobTitleController!.text.isNotEmpty ||
          countryController!.text.isNotEmpty) {
        var url = Uri.parse('http://10.0.2.2:8000/api/signup');

        var body = {
          'user_name': usernameController!.text,
          'identifier': emailController!.text,
          'password': passwordController!.text,
          'job_title': jobTitleController!.text,
          'country': countryController!.text,
        };

        var req = http.MultipartRequest('POST', url);
        req.fields.addAll(body);

        var res = await req.send();
        final resBody = await res.stream.bytesToString();
        //

        Map<String, dynamic> result = jsonDecode(resBody);
        if (result['status'] == true) {
          Get.offAll(Login());
        } else {
          Map error = result['error'];
          if (error.containsKey('user_name') &&
              error.containsKey('identifier')) {
            Get.snackbar(
              "Warning",
              "UserName and Identifier are already exist",
            );
          } else if (error.containsKey('user_name')) {
            Get.snackbar("Warning", "UserName are already exist");
          } else if (error.containsKey('identifier')) {
            Get.snackbar("Warning", "Identifier are already exist");
          }
        }
      } else {
        Get.snackbar("Warning", "the field is empty");
      }
      // } else {
      //   Get.snackbar("Warning", 'Check your connection in internet');
      // }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    usernameController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    identifierController = TextEditingController();
    jobTitleController = TextEditingController();
    countryController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    usernameController!.dispose();
    emailController!.dispose();
    passwordController!.dispose();
    identifierController!.dispose();
    jobTitleController!.dispose();
    countryController!.dispose();
  }
}
