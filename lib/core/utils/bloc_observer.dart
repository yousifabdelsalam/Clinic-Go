import 'dart:developer'; // Imported for the log() function
import 'package:flutter_bloc/flutter_bloc.dart';

class MyBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    log('🟢 onCreate -- ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    // change.currentState shows where you were, change.nextState shows the newly emitted state!
    log('🔄 onChange -- ${bloc.runtimeType}\n   From: ${change.currentState}\n   To:   ${change.nextState}');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    log('🔴 onError -- ${bloc.runtimeType}\n   Error: $error');
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onClose(BlocBase bloc) {
    super.onClose(bloc);
    log('🗑️ onClose -- ${bloc.runtimeType}');
  }
}