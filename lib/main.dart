import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:Burrows/localization/Localized.dart';
import 'package:Burrows/src/views/splash/splash_screen.dart';

void main() {
  // Support vertical(portrait) only
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  // Run app
  return runApp(CupertinoStoreApp());
}

class CupertinoStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // FlutterStatusbarcolor.setStatusBarColor(Colors.white);
    return MaterialApp(
      supportedLocales: [Locale('en', 'US')],
      localizationsDelegates: [
        Localized.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate
      ],
      theme: ThemeData(
        pageTransitionsTheme: PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
            TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
          }
        )
      ),
      home: SplashPage(),
    );
  }
}

