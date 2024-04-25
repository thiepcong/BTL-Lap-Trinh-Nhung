import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  Future<bool> has(String key) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final bool f = await _basicErrorHandling(() async {
      return sharedPreferences.containsKey(key) &&
          sharedPreferences.getString(key) != null &&
          sharedPreferences.getString(key)!.isNotEmpty;
    });
    return f;
  }

  Future<bool> clear(String key) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final bool f = await _basicErrorHandling(() async {
      return await sharedPreferences.remove(key);
    });
    return f;
  }

  Future get(String key) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final f = await _basicErrorHandling(() async {
      if (await has(key)) {
        return await jsonDecode(sharedPreferences.getString(key)!);
      }
      return null;
    });
    return f;
  }

  Future<bool> put(String key, dynamic value) async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    final bool f = await _basicErrorHandling(() async {
      // ignore: unnecessary_await_in_return
      return await sharedPreferences.setString(key, jsonEncode(value));
    });
    return f;
  }
}

extension on CacheHelper {
  Future<T> _basicErrorHandling<T>(Future<T> Function() onSuccess) async {
    try {
      final f = await onSuccess();
      return f;
    } catch (e) {
      rethrow;
      // throw ClientException.cacheError(message: e.toString());
    }
  }
}
