import 'package:kuber/models/mock/mock_request_model.dart';

class PutRequestModel {
  String endPoint;
  Map<String, dynamic> body;
  Map<String, String>? headers;
  MockRequestModel? mockRequest;

  PutRequestModel({
    required this.endPoint,
    required this.body,
    this.headers,
    this.mockRequest,
  });
}
