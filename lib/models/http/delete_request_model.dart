import 'package:kuber/models/http/demo_request_model.dart';

class DeleteRequestModel {
  String endPoint;
  Map<String, String>? headers;
  DemoRequestModel? demoRequest;

  DeleteRequestModel({
    required this.endPoint,
    this.headers,
    this.demoRequest,
  });
}