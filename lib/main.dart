import 'package:clinic_go/core/theme/app_theme.dart';
import 'package:clinic_go/features/auth/presentation/screens/signup/signup_screen.dart';
import 'package:clinic_go/features/home/presentation/cubit/cubit.dart';
import 'package:clinic_go/features/home/presentation/screens/homeLayout_screen.dart';
import 'package:clinic_go/features/onboarding/presentation/onboarding_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/utils/bloc_observer.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
   await Firebase.initializeApp().then((s){
     print('done/////////////////////////');
   });
  runApp(MyApp());

}


class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 915),
      minTextAdapt: true,
      child: MaterialApp(
        debugShowCheckedModeBanner:  false,
      theme: ThemeData(
      primaryColor: ColorManager.primaryTeal,
      scaffoldBackgroundColor: ColorManager.scaffoldBackground
      ),
        home: onBoardingScreen(),
      ),
    );
  }
}
