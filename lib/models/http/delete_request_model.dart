import 'package:kuber/models/mock/mock_request_model.dart';

class DeleteRequestModel {
  String endPoint;
  Map<String, String>? headers;
  MockRequestModel? mockRequest;

  DeleteRequestModel({
    required this.endPoint,
    this.headers,
    this.mockRequest,
  });
}