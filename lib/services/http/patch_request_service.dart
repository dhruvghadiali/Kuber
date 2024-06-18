import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:kuber/helpers/app_enum.dart';
import 'package:kuber/models/http/patch_request_model.dart';
import 'package:kuber/models/mock/mock_request_model.dart';
import 'package:kuber/models/http/http_response_model.dart';
import 'package:kuber/services/mock/mock_request_service.dart';

class PatchRequestService {
  static Future<HttpResponseModel> patchRequest(
    PatchRequestModel patchRequestModel,
  ) async {
    print(
        "PATCH Request Service Environment From Dotenv ${dotenv.env['ENVIRONMENT']}");
    print(
        "PATCH Request Service API End Point From Dotenv ${dotenv.env['API_END_POINT']}");
    print(
        "PATCH Request Service API Endpoint From Payload ${patchRequestModel.endPoint}");
    print(
        "PATCH Request Service Request body From Payload ${patchRequestModel.body}");
    print(
        "PATCH Request Service Request headers From Payload ${patchRequestModel.headers}");

    Map<String, String> headers = <String, String>{
      'Content-Type': 'application/json',
      "Access-Control-Allow-Origin": "*",
    };

    if (patchRequestModel.headers != null) {
      headers = headers..addAll(patchRequestModel.headers!);
    }

    if (Environment.demo.name == dotenv.env['ENVIRONMENT']) {
      return await MockRequestService.mockRequestService(
        mockRequest:
            patchRequestModel.mockRequest ?? MockRequestModel.defaultValues(),
      );
    } else {
      try {
        String url =
            '${dotenv.env['API_END_POINT']}/${patchRequestModel.endPoint}';
        final response = await http.patch(
          Uri.parse(url),
          headers: headers,
          body: jsonEncode(patchRequestModel.body),
        );

        Map<String, dynamic> responseData = json.decode(response.body);

        return HttpResponseModel.fromJson({
          "data": responseData['data'],
          "message": responseData['message'],
          "status": response.statusCode,
        });
      } catch (error) {
        print("ERROR: PATCH Request Service $error");
        return HttpResponseModel.fromJson({
          "data": [],
          "message": "Something went wrong please try again later.",
          "status": 500,
        });
      }
    }
  }
}
