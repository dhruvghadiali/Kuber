import 'package:kuber/models/mock/mock_request_model.dart';

class PostRequestModel {
  String endPoint;
  Map<String, dynamic> body;
  Map<String, String>? headers;
  MockRequestModel? mockRequest;

  PostRequestModel({
    required this.endPoint,
    required this.body,
    this.headers,
    this.mockRequest,
  });
}