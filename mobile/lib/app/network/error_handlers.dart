import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';

import '/app/network/exceptions/api_exception.dart';
import '/app/network/exceptions/app_exception.dart';
import '/app/network/exceptions/network_exception.dart';
import '/app/network/exceptions/not_found_exception.dart';
import '/app/network/exceptions/service_unavailable_exception.dart';
import 'exceptions/bad_request_exception.dart';

Exception handleError(String error) {
  // final logger = BuildConfig.instance.config.logger;
  log("Generic exception: $error");

  return AppException(message: error);
}

Exception handleDioError(DioException dioError) {
  switch (dioError.type) {
    case DioExceptionType.cancel:
      return AppException(message: "Request to API server was cancelled");
    case DioExceptionType.connectionTimeout:
      return AppException(message: "Connection timeout with API server");

    case DioExceptionType.receiveTimeout:
      return TimeoutException("Receive timeout in connection with API server");
    case DioExceptionType.sendTimeout:
      return TimeoutException("Send timeout in connection with API server");
    case DioExceptionType.badCertificate:
      return AppException(message: "Connection timeout with API server");
    case DioExceptionType.badResponse:
      return BadRequestException(
          message: dioError.response?.data["message"] ?? dioError.message,
          httpCode: dioError.response?.statusCode ?? -1,
          status: dioError.response?.statusMessage ?? "Bad Request");
    case DioExceptionType.connectionError:
      return NetworkException("There is no internet connection");
    case DioExceptionType.unknown:
      return _parseDioErrorResponse(dioError);
  }
}

Exception _parseDioErrorResponse(DioException dioError) {
  int statusCode = dioError.response?.statusCode ?? -1;
  String? status;
  String? serverMessage;

  try {
    if (statusCode == -1 || statusCode == HttpStatus.ok) {
      statusCode = dioError.response?.data["status"];
    }
    serverMessage = dioError.response?.data["message"];
  } catch (e, s) {
    log(s.toString());

    serverMessage = "Something went wrong. Please try again later.";
  }

  switch (statusCode) {
    case HttpStatus.serviceUnavailable:
      return ServiceUnavailableException("Service Temporarily Unavailable");
    case HttpStatus.notFound:
      return NotFoundException(serverMessage ?? "", status ?? "");
    default:
      return ApiException(
          httpCode: statusCode,
          status: status ?? "",
          message: serverMessage ?? "");
  }
}
