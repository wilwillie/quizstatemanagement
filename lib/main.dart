import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_statemanagement/screens/main_screen.dart';
import 'theme_model.dart'; // Import your ThemeProvider

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(), // Initialize ThemeProvider
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the current theme from ThemeProvider
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeProvider.currentTheme, // Use the selected theme
      home: MainScreen(),
    );
  }
}
