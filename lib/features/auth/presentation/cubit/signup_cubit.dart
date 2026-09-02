import 'package:clinic_go/features/auth/domain/usecases/signup_usecase.dart';
import 'package:clinic_go/features/auth/presentation/cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignUpState>{

  final SignUpUseCase _signUpUseCase;

  SignupCubit(this._signUpUseCase) : super(const SignUpState.editing()) ;





}