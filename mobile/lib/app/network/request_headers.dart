import 'package:dio/dio.dart';


class RequestHeaderInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    getCustomHeaders().then((customHeaders) {
      options.headers.addAll(customHeaders);
      super.onRequest(options, handler);
    });
  }

  Future<Map<String, String>> getCustomHeaders() async {
    // final secureStorage = FlutterSecureStorage();
    // final accessToken = 
    // await secureStorage.read(key: SecureKeyConstants.accessToken);
    var customHeaders = {
      'content-type': 'application/json',
      'Accept': "application/json"
    };
    // if (accessToken != null && accessToken.isNotEmpty) {
    //   customHeaders.addAll({
    //     'Authorization': "Bearer $accessToken",
    //   });
    // }

    return customHeaders;
  }
}
