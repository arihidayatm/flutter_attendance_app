import 'package:flutter/material.dart';
import 'core/core.dart';
import 'presentation/auth/pages/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var GoogleFonts;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Intensive Club batch 16',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
        dividerTheme: DividerThemeData(color: AppColors.light.withOpacity(0.5)),
        dialogTheme: const DialogTheme(elevation: 0),
        textTheme: GoogleFonts.kumbhSansTextTheme(
          Theme.of(context).textTheme,
        ),
        appBarTheme: AppBarTheme(
          centerTitle: true,
          color: AppColors.white,
          elevation: 0,
          titleTextStyle: GoogleFonts.kumbhSans(
            color: AppColors.black,
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const SplashPage(),
    );
  }
}
