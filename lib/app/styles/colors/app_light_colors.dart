import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_gradients.dart';

class AppLightColors extends Palette {
  const AppLightColors()
      : super.fromChild(
          primary: const Color(0xFF502510),
          secondary: const Color(0xFF2E2148),
          surface: const Color(0xFFEDF3EF),
          surfaceContainer: const Color(0xFFA4B7A7),
          outline: const Color(0xFF6478C7),
          elPrimary: const Color(0xFF101423),
          elSecondary: const Color(0xFF151923),
          error: const Color(0xFF6E2525),
          success: const Color(0xFF7AEAC9),
          warning: const Color(0xFF5B4016),
          gradients: const AppGradients(
            primary: LinearGradient(
              colors: [
                Color.fromRGBO(191, 156, 65, 0.78),
                Color.fromRGBO(199, 77, 50, 1),
              ],
              begin: Alignment(-1, -0.5),
              end: Alignment(1, -0.5),
            ),
          ),
        );
}
