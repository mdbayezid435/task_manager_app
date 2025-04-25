import 'package:flutter/material.dart';
import 'package:rabbilapp/ui/screens/splash_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Colors.grey,
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                  border: _getZeroBorder(),
                  enabledBorder: _getZeroBorder(),
                  focusedBorder: _getZeroBorder(),
                  errorBorder: _getZeroBorder(),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                  fixedSize: const Size.fromWidth(double.maxFinite),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
      ),textTheme: const TextTheme(
        titleLarge: TextStyle(fontSize: 24,fontWeight: FontWeight.w600)
      )
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }

OutlineInputBorder _getZeroBorder() {
    return const OutlineInputBorder(
      borderSide: BorderSide.none,
    );
  }


}