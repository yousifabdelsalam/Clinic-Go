import 'package:clinic_go/core/widgets/glass_background.dart';
import 'package:clinic_go/core/widgets/myBottomNav.dart';
import 'package:clinic_go/features/booking/presentation/my_appointments_screen.dart';
import 'package:clinic_go/features/home/presentation/screens/home_screen.dart';
import 'package:clinic_go/features/home/presentation/search_screen.dart';
import 'package:clinic_go/features/settings/presentation/settings.dart';
import 'package:flutter/material.dart';

import 'dart:math' as math;


class HomeLayout_Screen extends StatelessWidget {
  int current_page = 0;

  @override
  Widget build(BuildContext context) {

    List<Widget> screens = [
      Home_Screen(),
      myAppointments_Screen(),
      Search_Screen(),
      Settings_Screen(),
    ];
    return myGlassBackground(
      context: context,
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children:[
          glassBottomBar(context: context,),
          screens[current_page]
        ])
       )
      );
  }
}

