import 'package:flutter/material.dart';
import 'package:glassmorphism/glassmorphism.dart';
import 'package:go_router/go_router.dart';

Widget glassBottomBar({
  required BuildContext context,
}) {
  return Positioned(
    bottom: 0.1,
    left: 20,
    right: 20,
    child: GlassmorphicContainer(
      width: MediaQuery.of(context).size.width - 40,
      height:  70,
      borderRadius: 30, // Rounded corners for the bar
      blur: 20,
      alignment: Alignment.center,
      border: 2,
      linearGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.1),
          Colors.white.withOpacity(0.05),
        ],
      ),
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.5),
          Colors.white.withOpacity(0.2),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navItem(Icons.home_filled, true,context ),
          _navItem(Icons.local_activity_outlined, true,context ),
          _navItem(Icons.notifications_none_outlined, true,context ),
          _navItem(Icons.settings, true,context ),
        ],
      ),
    ),
  );
}

Widget _navItem(IconData icon, bool isActive,BuildContext context) {
  return IconButton(
    icon: Icon(icon,
      color: isActive ? Colors.tealAccent : Colors.white70,
      size: 28,
    ),
    onPressed:() {
      context.go("/categories");
    },

  );
}