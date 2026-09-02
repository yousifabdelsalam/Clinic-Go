

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignUpState with _$SignUpState {
  const factory SignUpState.editing({

    @Default('') String name,
    @Default('') String email,
    @Default('') String password,
    @Default(0) int age,
    @Default('') String gender,
    @Default('') String phone,
    @Default('') String city,

}) = _Editing;

  const factory SignUpState.loading({

    required String name,
    required String email,
    required String password,
    required int age,
    required String gender,
    required String phone,
    required String city,

  }) = _Loading;

  const factory SignUpState.success() = _Success;

  const factory SignUpState.failure({

    required String name,
    required String email,
    required String password,
    required int age,
    required String gender,
    required String phone,
    required String city,

    required String errorMessage,

  }) = _Failure;
}