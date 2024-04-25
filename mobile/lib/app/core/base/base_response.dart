class BaseResponse<T> {
  final String? message;
  final bool? status;
  final T? data;

  BaseResponse(
    this.message,
    this.status,
    this.data,
  );

  factory BaseResponse.fromJson(
      {required Map<String, dynamic> json, Function(dynamic json)? fromJson}) {
    final results = fromJson != null ? fromJson(json['data']) : null;
    final status = json['status'] as bool?;
    final message = json['message'] as String?;
    return BaseResponse(message, status, results);
  }
}
