import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kuber/helpers/app_enum.dart';
import 'package:kuber/models/http/put_request_model.dart';
import 'package:kuber/models/mock/mock_request_model.dart';
import 'package:kuber/models/http/http_response_model.dart';
import 'package:kuber/services/mock/mock_request_service.dart';

class PutRequestService {
  static Future<HttpResponseModel> putRequest(
    PutRequestModel putRequestModel,
  ) async {
    print(
        "PUT Request Service Environment From Dotenv ${dotenv.env['ENVIRONMENT']}");
    print(
        "PUT Request Service API End Point From Dotenv ${dotenv.env['API_END_POINT']}");
    print(
        "PUT Request Service API Endpoint From Payload ${putRequestModel.endPoint}");
    print("PUT Request Service API body From Payload ${putRequestModel.body}");
    print(
        "PUT Request Service Request headers From Payload ${putRequestModel.headers}");

    Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*",
    };

    if (putRequestModel.headers != null) {
      headers = headers..addAll(putRequestModel.headers!);
    }

    if (Environment.demo.name == dotenv.env['ENVIRONMENT']) {
      return await MockRequestService.mockRequestService(
        mockRequest:
            putRequestModel.mockRequest ?? MockRequestModel.defaultValues(),
      );
    } else {
      try {
        String url =
            '${dotenv.env['API_END_POINT']}/${putRequestModel.endPoint}';
        final response = await http.put(
          Uri.parse(url),
          headers: headers,
          body: jsonEncode(putRequestModel.body),
        );

        Map<String, dynamic> responseData = json.decode(response.body);

        return HttpResponseModel.fromJson({
          "data": responseData['data'],
          "message": responseData['message'],
          "status": response.statusCode,
        });
      } catch (error) {
        print("ERROR: PUT Request Service $error");
        return HttpResponseModel.fromJson({
          "data": [],
          "message": "Something went wrong please try again later.",
          "status": 500,
        });
      }
    }
  }
}
