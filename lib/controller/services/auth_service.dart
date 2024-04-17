import 'dart:convert';
import 'dart:developer';

import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:promilo_meetup/model/token_model.dart';
import 'package:promilo_meetup/model/user_model.dart';

class AuthService {
  Future<TokenModel?> login(UserModel model) async {
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
        'https://apiv2stg.promilo.com/user/oauth/token',
        data: formData,
        options: Options(
          headers: {
            'Authorization': 'Basic UHJvbWlsbzpxNCE1NkBaeSN4MiRHQg==',
          },
        ),
      );

      if (response.statusCode == 200) {
        return TokenModel(token: response.data['response']['access_token']);
      } else {
        throw Exception('Status code: ${response.statusCode}');
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
