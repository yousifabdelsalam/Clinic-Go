
import 'package:clinic_go/features/auth/presentation/screens/signup/signup_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/theme/colors.dart';
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
        home: SignUpScreen(),
      ),
    );
  }
}