import 'dart:convert';
import 'dart:typed_data';

import 'package:crypto/crypto.dart';

class Encoder{
  static String keyEEE = 'thiepcong@123!pass.;Âamo%*.o?!ư';
  static String encodeKey(String word) {
    var key = utf8.encode(keyEEE);
    var bytes = utf8.encode(word);

    var hmacSha256 = Hmac(sha256, key);
    var digest = hmacSha256.convert(bytes);
    return base64UrlEncode(Uint8List.fromList(digest.bytes));
  }
}