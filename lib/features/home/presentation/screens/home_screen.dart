import 'package:clinic_go/core/widgets/glass_background.dart';
import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';

import '../../../../core/theme/app_theme.dart';

class Home_Screen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return
      Column(children: [
    Padding(
      padding: const EdgeInsets.only(top: 10,left: 15),
      child: Row(
        children: [
        Stack(
          children:[
            Container(width: 60,height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                blurRadius: 10,
                spreadRadius: 2,
                offset: const Offset(3, 4), // shadow position
              ),
            ],)
            ),
            CircleAvatar(
              radius: 33,
              backgroundColor: Colors.teal,
              child: CircleAvatar(
              backgroundImage: NetworkImage('https://img.freepik.com/free-photo/headshot-glad-hipster-guy-with-bristle-smiles-broadly-reacts-positive_273609-45716.jpg',
                          ),
              radius: 30,
                          ),
            ),
          ]
        ),
        SizedBox(width: 10,),
        Text(
          'Hello, Yousif!',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 25,color: Colors.white),),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_outlined, color: Colors.white),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.teal.shade700),
                elevation: const WidgetStatePropertyAll(10),
                shadowColor: const WidgetStatePropertyAll(Colors.black),
                shape: const WidgetStatePropertyAll(
                  CircleBorder(
                    side: BorderSide(color: Colors.white24, width: 1),
                  ),
                ),
              ),
            ),
        )
      ],),
      ),
    ]);

  }
}
