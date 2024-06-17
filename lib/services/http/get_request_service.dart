import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kuber/helpers/app_enum.dart';
import 'package:kuber/models/http/get_request_model.dart';
import 'package:kuber/models/http/demo_request_model.dart';
import 'package:kuber/models/http/http_response_model.dart';
import 'package:kuber/services/http/mock_request_service.dart';

class GetRequestService {
  static Future<HttpResponseModel> getRequest(
    GetRequestModel getRequestModel,
  ) async {
    print(
        "GET Request Service Environment From Dotenv ${dotenv.env['ENVIRONMENT']}");
    print(
        "GET Request Service API End Point From Dotenv ${dotenv.env['API_END_POINT']}");
    print(
        "GET Request Service API Endpoint From Payload ${getRequestModel.endPoint}");
    print(
        "GET Request Service Request headers From Payload ${getRequestModel.headers}");

    Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*",
    };

    if (getRequestModel.headers != null) {
      headers = headers..addAll(getRequestModel.headers!);
    }

    if (Environment.demo.name == dotenv.env['ENVIRONMENT']) {
      return await MockRequestService.mockRequestService(
        demoRequest:
            getRequestModel.demoRequest ?? DemoRequestModel.defaultValues(),
      );
    } else {
      try {
        String url =
            '${dotenv.env['API_END_POINT']}/${getRequestModel.endPoint}';
        final response = await http.get(
          Uri.parse(url),
          headers: headers,
        );

        Map<String, dynamic> responseData = json.decode(response.body);

        return HttpResponseModel.fromJson({
          "data": responseData['data'],
          "message": responseData['message'],
          "status": response.statusCode,
        });
      } catch (error) {
        print("ERROR: GET Request Service $error");
        return HttpResponseModel.fromJson({
          "data": [],
          "message": "Something went wrong please try again later.",
          "status": 500,
        });
      }
    }
  }
}
