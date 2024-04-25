import 'base_api_exception.dart';

class BadRequestException extends BaseApiException {
  BadRequestException({
    required int httpCode,
    required String status,
    String message = "",
  }) : super(httpCode: httpCode, status: status, message: message);
}
