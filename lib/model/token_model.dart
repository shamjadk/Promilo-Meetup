import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_model.freezed.dart';

@freezed
class TokenModel with _$TokenModel {
  const factory TokenModel({
    required String token,
  }) = _TokenModel;
}