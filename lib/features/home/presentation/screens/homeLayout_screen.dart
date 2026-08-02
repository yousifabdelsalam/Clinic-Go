import 'package:clinic_go/core/widgets/glass_background.dart';
import 'package:clinic_go/core/widgets/myBottomNav.dart';
import 'package:clinic_go/features/home/presentation/cubit/cubit.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../cubit/states.dart';


class HomeLayout_Screen extends StatelessWidget {

  // final StatefulNavigationShell navigationShell;
  //
  // const HomeLayout_Screen({
  //   super.key,
  //   required this.navigationShell,
  // });

  @override
  Widget build(BuildContext context) {

    return BlocConsumer<AppCubit,AppStates>(
      builder: (BuildContext context, AppStates state) {
        AppCubit cubit =AppCubit.get(context);
        return myGlassBackground(
            context: context,
            child: Scaffold(
                backgroundColor: Colors.transparent,
                body:
                //navigationShell,
              //bottomNavigationBar:
              Stack(children:[
                glassBottomBar(context: context,),
                cubit.screens[cubit.current_page]
              ])
            )
        );
      },
      listener: (BuildContext context, AppStates state) {  },

    );
  }
}

