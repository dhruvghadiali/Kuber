import 'package:kuber/models/http/demo_request_model.dart';

class PostRequestModel {
  String endPoint;
  Map<String, dynamic> body;
  Map<String, String>? headers;
  DemoRequestModel? demoRequest;

  PostRequestModel({
    required this.endPoint,
    required this.body,
    this.headers,
    this.demoRequest,
  });
}