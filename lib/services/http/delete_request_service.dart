import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kuber/helpers/app_enum.dart';
import 'package:kuber/models/http/delete_request_model.dart';
import 'package:kuber/models/mock/mock_request_model.dart';
import 'package:kuber/models/http/http_response_model.dart';
import 'package:kuber/services/mock/mock_request_service.dart';

class DeleteRequestService {
  static Future<HttpResponseModel> deleteRequest(
    DeleteRequestModel deleteRequestModel,
  ) async {
    print(
        "DELETE Request Service Environment From Dotenv ${dotenv.env['ENVIRONMENT']}");
    print(
        "DELETE Request Service API End Point From Dotenv ${dotenv.env['API_END_POINT']}");
    print(
        "DELETE Request Service API Endpoint From Payload ${deleteRequestModel.endPoint}");
    print(
        "DELETE Request Service Request headers From Payload ${deleteRequestModel.headers}");

    Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*",
    };

    if (deleteRequestModel.headers != null) {
      headers = headers..addAll(deleteRequestModel.headers!);
    }

    if (Environment.demo.name == dotenv.env['ENVIRONMENT']) {
      return await MockRequestService.mockRequestService(
        mockRequest:
            deleteRequestModel.mockRequest ?? MockRequestModel.defaultValues(),
      );
    } else {
      try {
        String url =
            '${dotenv.env['API_END_POINT']}/${deleteRequestModel.endPoint}';
        final response = await http.delete(
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
        print("ERROR: DELETE Request Service $error");
        return HttpResponseModel.fromJson({
          "data": [],
          "message": "Something went wrong please try again later.",
          "status": 500,
        });
      }
    }
  }
}
