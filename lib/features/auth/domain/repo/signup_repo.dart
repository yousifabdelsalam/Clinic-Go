
import 'package:clinic_go/core/errors/failures.dart';
import 'package:clinic_go/features/auth/domain/entities/signup_entity.dart';
import 'package:dartz/dartz.dart';

abstract class SignupRepo {

  Future<Either<Failure, UserEntity>> signUp(
      String name,
      String email,
      String password,
      int age,
      String gender,
      String phone,
      String city
      );



}