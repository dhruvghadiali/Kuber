import 'package:kuber/helpers/app_enum.dart';

class HttpResponseModel {
  final int status;
  final String message;
  final List<dynamic> data;
  final HttpResponseStatus httpResponseStatus;

  HttpResponseModel({
    required this.status,
    required this.message,
    required this.data,
    required this.httpResponseStatus,
  });

  factory HttpResponseModel.fromJson(Map<String, dynamic> json) {
    return HttpResponseModel(
      status: setStatus(json),
      data: setData(json),
      message: setMessage(json),
      httpResponseStatus: setHttpResponseStatus(json),
    );
  }

  HttpResponseModel copyWith({
    int? status,
    String? message,
    List<dynamic>? data,
    HttpResponseStatus? httpResponseStatus,
  }) =>
      HttpResponseModel(
        status: status ?? this.status,
        message: message ?? this.message,
        data: data ?? this.data,
        httpResponseStatus: httpResponseStatus ?? this.httpResponseStatus,
      );

  static HttpResponseModel defaultValues() => HttpResponseModel(
        status: 200,
        message: 'Request successfully serviced',
        data: [],
        httpResponseStatus: HttpResponseStatus.isSuccessfullyServiced,
      );

  static int setStatus(Map<String, dynamic> json) {
    if (json.containsKey('status')) {
      if (json['status'] is int) {
        return json['status'];
      }
    }

    return 404;
  }

  static String setMessage(Map<String, dynamic> json) {
    if (json.containsKey('message')) {
      if (json['message'] is String ||
          json['message'] != null ||
          json['message'].toString().isNotEmpty) {
        return json['message'];
      }
    }

    return '';
  }

  static List<dynamic> setData(Map<String, dynamic> json) {
    if (json.containsKey('data')) {
      if (json['data'] is List ||
          json['data'] != null ||
          json['data'].length > 0) {
        return json['data'];
      }
    }

    return [];
  }

  static HttpResponseStatus setHttpResponseStatus(Map<String, dynamic> json) {
    if (json.containsKey('status')) {
      if (json['status'] != null) {
        if (json['status'] == 200 || json['status'] == 201) {
          return HttpResponseStatus.isSuccessfullyServiced;
        } else if (json['status'] == 401) {
          return HttpResponseStatus.unAuthorizedUser;
        } else if (json['status'] == 500) {
          return HttpResponseStatus.error;
        } else {
          return HttpResponseStatus.notSuccessfullyServiced;
        }
      }
    }
    return HttpResponseStatus.error;
  }
}
