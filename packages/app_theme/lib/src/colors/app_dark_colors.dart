import 'package:flutter/material.dart';
import 'app_colors.dart';
import 'app_gradients.dart';

class AppDarkColors extends Palette {
  const AppDarkColors()
      : super.fromChild(
          primary: const Color(0xFFF07E11),
          secondary: const Color(0x94257D45),
          surface: const Color(0xFF0A1121),
          surfaceContainer: const Color(0xFF18254F),
          outline: const Color(0xFF282C39),
          elPrimary: const Color(0xFFF5F6F6),
          elSecondary: const Color(0xFFB5B6BB),
          error: const Color(0xFFB05151),
          success: const Color(0xFF5AFF8B),
          warning: const Color(0xFF4B3717),
          gradients: const AppGradients(
            primary: LinearGradient(
              colors: [
                Color.fromRGBO(134, 78, 65, 1),
                Color.fromRGBO(75, 61, 21, 0.7803921568627451),
              ],
              begin: AlignmentDirectional.bottomStart,
              end: AlignmentDirectional.topEnd,
            ),
          ),
        );
}
