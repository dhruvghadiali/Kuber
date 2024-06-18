import 'package:kuber/models/mock/mock_request_model.dart';

class GetRequestModel {
  String endPoint;
  Map<String, String>? headers;
  MockRequestModel? mockRequest;

  GetRequestModel({
    required this.endPoint,
    this.headers,
    this.mockRequest,
  });
}