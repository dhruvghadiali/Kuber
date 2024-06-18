import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kuber/helpers/app_enum.dart';
import 'package:kuber/models/http/post_request_model.dart';
import 'package:kuber/models/mock/mock_request_model.dart';
import 'package:kuber/models/http/http_response_model.dart';
import 'package:kuber/services/mock/mock_request_service.dart';

class PostRequestService {
  static Future<HttpResponseModel> postRequest(
    PostRequestModel postRequestModel,
  ) async {
    print(
        "POST Request Service Environment From Dotenv ${dotenv.env['ENVIRONMENT']}");
    print(
        "POST Request Service API End Point From Dotenv ${dotenv.env['API_END_POINT']}");
    print(
        "POST Request Service API Endpoint From Payload ${postRequestModel.endPoint}");
    print(
        "POST Request Service Request body From Payload ${postRequestModel.body}");
    print(
        "POST Request Service Request headers From Payload ${postRequestModel.headers}");

    Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*",
    };

    if (postRequestModel.headers != null) {
      headers = headers..addAll(postRequestModel.headers!);
    }

    if (Environment.demo.name == dotenv.env['ENVIRONMENT']) {
      return await MockRequestService.mockRequestService(
        mockRequest:
            postRequestModel.mockRequest ?? MockRequestModel.defaultValues(),
      );
    } else {
      try {
        String url =
            '${dotenv.env['API_END_POINT']}/${postRequestModel.endPoint}';
        final response = await http.post(
          Uri.parse(url),
          headers: headers,
          body: jsonEncode(postRequestModel.body),
        );

        Map<String, dynamic> responseData = json.decode(response.body);

        return HttpResponseModel.fromJson({
          "data": responseData['data'],
          "message": responseData['message'],
          "status": response.statusCode,
        });
      } catch (error) {
        print("ERROR: POST Request Service $error");
        return HttpResponseModel.fromJson({
          "data": [],
          "message": "Something went wrong please try again later.",
          "status": 500,
        });
      }
    }
  }
}
