import 'dart:convert';

import 'package:get/get.dart';
import 'package:parttime/core/function/checkINternet.dart';
import 'package:http/http.dart' as http;

postData(
  String myUrl,
  Map<String, String> data,
  Function actionIfSatusIsTrueOrFalse,
) async {
  if (checkInternet()) {
    var headersList = {
      'Accept': '*/*',
      'User-Agent': 'Thunder Client (https://www.thunderclient.com)',
      'Authorization':
          'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTQsInJvbGUiOiJjbGllbnQiLCJpYXQiOjE3NDA5Mzk3MDksImV4cCI6MTc0MTU0NDUwOX0.bsDfirSWkYh8gAaDsahmhuK5Hdg1Zlg1qh3il8x3F_Q',
    };
    // var url = Uri.parse('http://10.0.2.2:8000/api/signup');
    var url = Uri.parse(myUrl);

    // var body = {
    //   'user_name': usernameController!.text,
    //   'identifier': emailController!.text,
    //   'password': passwordController!.text,
    //   'job_title': jobTitleController!.text,
    //   'country': countryController!.text,
    // };
    var body = data;

    var req = http.MultipartRequest('POST', url);
    req.headers.addAll(headersList);
    req.fields.addAll(body);

    var res = await req.send();
    final resBody = await res.stream.bytesToString();
    //

    Map<String, dynamic> result = jsonDecode(resBody);
    actionIfSatusIsTrueOrFalse();
  } else {
    Get.snackbar("Warning", 'Check your connection in internet');
  }
}
