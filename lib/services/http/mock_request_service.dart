import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:kuber/models/http/demo_request_model.dart';
import 'package:kuber/models/http/http_response_model.dart';

class MockRequestService{
  static Future<HttpResponseModel> mockRequestService({
    required DemoRequestModel demoRequest,
  }) async {
    try {
      final String response = await rootBundle.loadString(demoRequest.mockFilePath);
      final Map<String, dynamic> responseData = json.decode(response);

      await Future.delayed(const Duration(seconds: 10), () {});

      return HttpResponseModel.fromJson({
        "data": responseData['data'],
        "message": responseData['message'],
        "status": demoRequest.statusCode,
      });
    } catch (error) {
      print("ERROR: Mock Request Service $error");
      return HttpResponseModel.fromJson({
        "data": [],
        "message": "something went wrong",
        "status": 500,
      });
    }
  }
}