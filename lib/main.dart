import 'package:clinic_go/features/booking/presentation/my_appointments_screen.dart';
import 'package:clinic_go/features/home/presentation/screens/homeLayout_screen.dart';
import 'package:clinic_go/features/home/presentation/search_screen.dart';
import 'package:clinic_go/features/settings/presentation/settings.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp().then((s){
     print('done/////////////////////////');
   });
  runApp(MyApp());
}
final GoRouter _router =
GoRouter(
    routes: <RouteBase>[
      GoRoute(
          path: "/",
          builder: (context, GoRouterState state) {
            return HomeLayout_Screen();
          }
      ),
      GoRoute(
          path: '/my_appointments',
          builder: (context, GoRouterState state) {
            return myAppointments_Screen();
          }
      ),
      GoRoute(
          path: '/categories',
          builder: (context, GoRouterState state) {
            return Search_Screen();
          }
      ),
      GoRoute(
          path: '/categories',
          builder: (context, GoRouterState state) {
            return Settings_Screen();
          }
      ),
    ]);

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
