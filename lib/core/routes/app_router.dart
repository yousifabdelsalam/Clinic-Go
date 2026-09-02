import 'package:clinic_go/core/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../features/booking/presentation/my_appointments_screen.dart';
import '../../features/home/presentation/screens/homeLayout_screen.dart';
import '../../features/home/presentation/screens/home_screen.dart';
import '../../features/home/presentation/search_screen.dart';
import '../../features/settings/presentation/settings.dart';

// Global key to manage root navigation (like showing dialogs globally)
final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter appRouter = GoRouter(
  initialLocation: Routes.onBoardingScreen,
  navigatorKey: _rootNavigatorKey,
  routes: [
    // 🔀 StatefulShellRoute handles persistent bottom navigation tabs automatically
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        // We pass the navigationShell into your layout screen so it can switch tabs safely
        return HomeLayout_Screen();
      },
      branches: [

        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.onBoardingScreen,
              builder: (context, state) =>  myAppointments_Screen(),
            ),
          ],
        ),

        // Tab 1: Home
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.homeScreen,
              builder: (context, state) =>  Home_Screen(), // Your home dashboard content
            ),
          ],
        ),
        // Tab 2: Appointments
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.myAppointments,
              builder: (context, state) =>  myAppointments_Screen(),
            ),
          ],
        ),
        // Tab 3: Search/Categories
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.categories,
              builder: (context, state) =>  Search_Screen(),
            ),
          ],
        ),
        // Tab 4: Settings
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: Routes.settings,
              builder: (context, state) =>  Settings_Screen(),
            ),
          ],
        ),
      ],
    ),
  ],
);