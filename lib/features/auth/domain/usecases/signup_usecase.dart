

import 'package:clinic_go/features/auth/domain/entities/signup_entity.dart';
import 'package:clinic_go/features/auth/domain/repo/signup_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failures.dart';

class SignUpUseCase {

  final SignupRepo repo;

  SignUpUseCase({required this.repo});

  Future<Either<Failure, UserEntity>> signUp
      (
      String name,
      String email,
      String password,
      int age,
      String gender,
      String phone,
      String city
      )
      {
       return repo.signUp(name, email, password, age, gender, phone, city);
      }

}