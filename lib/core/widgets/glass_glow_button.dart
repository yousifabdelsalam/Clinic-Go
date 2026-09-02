import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:inner_shadow_container/inner_shadow_container.dart';


class GlassGlowButton extends StatefulWidget {
  final String text;
  final VoidCallback onPressed;
  final bool isDarkTheme; // Boolean parameter to toggle designs

  const GlassGlowButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.isDarkTheme = false, // Defaults to the bright cyan neon style
  });

  @override
  State<GlassGlowButton> createState() => _GlassGlowButtonState();
}

class _GlassGlowButtonState extends State<GlassGlowButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    const neonCyan = Color(0xFF66F7FF);
    const brightCyan = Color(0xFF9AFFFF);

    double width = 300.w;
    double height = 55.h;
    double radius = 30;

    // 1. Dynamic Outer Glow
    final List<BoxShadow> activeOuterShadow = widget.isDarkTheme
        ? [
      // Subtle dark drop shadow for the dark theme
      BoxShadow(
        color: Colors.black.withValues(alpha: _isPressed ? 0.3 : 0.15),
        blurRadius: _isPressed ? 4 : 12,
        offset: Offset(0, _isPressed ? 2 : 6),
      )
    ]
        : (_isPressed
        ? [
      BoxShadow(
        color: neonCyan.withValues(alpha: 0.20),
        blurRadius: 10,
        spreadRadius: -1,
      ),
    ]
        : [
      BoxShadow(
        color: neonCyan.withValues(alpha: 0.35),
        blurRadius: 30,
        spreadRadius: 2,
      ),
      BoxShadow(
        color: neonCyan.withValues(alpha: 0.45),
        blurRadius: 14,
        spreadRadius: 0.5,
      ),
    ]);

    // 2. Dynamic Border Gradient
    final Gradient activeBorderGradient = widget.isDarkTheme
        ? LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        // Uniform light grey border to match the uploaded design
        Colors.grey.shade300.withValues(alpha: 0.7),
        Colors.grey.shade300.withValues(alpha: 0.7),
      ],
    )
        : LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        brightCyan.withValues(alpha: 0.95),
        neonCyan.withValues(alpha: 0.85),
        neonCyan,
        brightCyan,
      ],
      stops: const [0.0, 0.30, 0.70, 1.0],
    );

    // 3. Dynamic Inner Body Gradient
    final Gradient activeInnerGradient = widget.isDarkTheme
        ? LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        const Color(0xFF425658).withValues(alpha: 0.4), // Muted top slate
        const Color(0xFF1E2E30).withValues(alpha: 0.7), // Deep bottom teal
      ],
    )
        : const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF5EDCDF), // Bright cyan top
        Color(0xFF10737B), // Deep teal middle
        Color(0xFF5EDCDF), // Bright cyan bottom
      ],
    );

    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        widget.onPressed();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedScale(
        scale: _isPressed ? 0.96 : 1.0,
        duration: const Duration(milliseconds: 60),
        curve: Curves.easeOutQuad,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 60),
          width: width,
          height: height,
          transform: Matrix4.translationValues(0, _isPressed ? 3.0 : 0.0, 0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(radius),
            boxShadow: activeOuterShadow,
            gradient: activeBorderGradient,
          ),
          child: Padding(
            // This padding controls the border thickness (1.2) for both themes
            padding: const EdgeInsets.all(1.2),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(radius - 1.2),
                gradient: activeInnerGradient,
              ),
              child: InnerShadowContainer(
                height: height - 2.4.h,
                width: width - 2.4.w,
                backgroundColor: Colors.transparent,
                borderRadius: radius - 1.2,

                // Deep inset shadow replaces the top gloss when pressed
                blur: _isPressed ? 8 : (widget.isDarkTheme ? 2 : 4),
                offset: Offset(0, _isPressed ? 6 : (widget.isDarkTheme ? 2 : 3)),

                shadowColor: _isPressed
                    ? Colors.black.withValues(alpha: 0.60) // Sunken cavity
                    : Colors.white.withValues(alpha: widget.isDarkTheme ? 0.15 : 0.35),

                isShadowTopLeft: true,
                isShadowTopRight: true,
                child: Center(
                  child: AnimatedDefaultTextStyle(
                    duration: const Duration(milliseconds: 100),
                    style: TextStyle(
                      color: _isPressed
                          ? Colors.white.withValues(alpha: 0.75)
                          : Colors.white,
                      fontSize: _isPressed ? 15.2 : 16,
                      fontWeight: widget.isDarkTheme ? FontWeight.w400 : FontWeight.w600,
                      letterSpacing: 1.2,
                    ),
                    child: Text(widget.text),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}