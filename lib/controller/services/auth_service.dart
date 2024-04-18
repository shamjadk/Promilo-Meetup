import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:promilo_meetup/core/utils/api_utils.dart';
import 'package:promilo_meetup/model/token_model.dart';
import 'package:promilo_meetup/model/user_model.dart';

class AuthService {
  static Future<TokenModel?> login(UserModel model) async {
    final dio = Dio();

    final convertedPassword =
        sha256.convert(utf8.encode(model.password.trim())).toString();

    final formData = FormData.fromMap({
      'username': model.email,
      'password': convertedPassword,
      'grant_type': 'password',
    });

    try {
      final response = await dio.post(
        ApiUtils.postUrl,
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
          },
        ),
      );

      if (response.statusCode == 200) {
        log(response.statusCode.toString());
        return TokenModel(token: response.data['response']['access_token']);
      } else {
        log('Status code: ${response.statusCode}');
      }
    } on DioException {
      log('Api error');
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
