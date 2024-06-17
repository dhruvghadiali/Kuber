import 'package:kuber/models/http/demo_request_model.dart';

class GetRequestModel {
  String endPoint;
  Map<String, String>? headers;
  DemoRequestModel? demoRequest;

  GetRequestModel({
    required this.endPoint,
    this.headers,
    this.demoRequest,
  });
}