import 'package:app_theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app_view.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> with WidgetsBindingObserver {
  late final AppTheme appTheme = AppTheme(
    context: context,
  );

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  MediaQueryData get _mediaQuery => MediaQueryData.fromView(View.of(context));

  @override
  void didChangePlatformBrightness() {
    super.didChangePlatformBrightness();
    appTheme.onBrightnessChanged(_mediaQuery.platformBrightness);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: appTheme,
      builder: (BuildContext context, __) {
        return MaterialApp(
          theme: appTheme.lightTheme,
          darkTheme: appTheme.darkTheme,
          themeMode: appTheme.themeMode,
          debugShowCheckedModeBanner: false,
          home: AppView(appTheme: appTheme),
        );
      },
    );
  }
}
