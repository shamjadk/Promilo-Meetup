import 'package:flutter/material.dart';
import 'package:promilo_meetup/controller/navigator_controller.dart';
import 'package:promilo_meetup/controller/services/auth_service.dart';
import 'package:promilo_meetup/core/utils/snack_bar_utils.dart';
import 'package:promilo_meetup/model/user_model.dart';
import 'package:promilo_meetup/view/pages/home_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

@riverpod
class Auth extends _$Auth {
  @override
  bool build() {
    return true;
  }

  Future<void> login(
      String email, String password, BuildContext context) async {
    state = true;
    try {
      final token =
          await AuthService.login(UserModel(email: email, password: password));
      state = false;
      if (token!.token != '') {
        Future.sync(() => Nav.navPushReplace(context, const HomePage()));
        Future.sync(
          () => showSnackBar(context, 'Successfully logged in', false),
        );
      }
    } catch (e) {
      state = false;
      Future.sync(
        () => showSnackBar(context, 'An error occured', true),
      );
    }
  }
}
