import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  // Default tema adalah light
  int _selectedThemeIndex = 0; // Default light theme (index 0)
  String _fontFamily = 'Poppins'; // Font default

  int get selectedThemeIndex => _selectedThemeIndex;
  String get fontFamily => _fontFamily;

  // Mengubah tema
  void changeTheme(int themeIndex) {
    _selectedThemeIndex = themeIndex;
    notifyListeners();
  }

  // Mengubah font
  void changeFont(String newFont) {
    _fontFamily = newFont;
    notifyListeners();
  }

  // Tema terang (Light)
  ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
      scaffoldBackgroundColor: Colors.white, // latar belakang putih
      textTheme: TextTheme(
        bodyLarge: TextStyle(fontFamily: _fontFamily),
      ),
    );
  }

  // Tema gelap (Dark)
  ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primarySwatch: Colors.red,
      scaffoldBackgroundColor: Colors.black, // latar belakang hitam
      textTheme: TextTheme(
        bodyLarge: TextStyle(fontFamily: _fontFamily),
      ),
    );
  }

  // Tema biru (Blue)
  ThemeData get blueTheme {
    return ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue, // Menggunakan biru sebagai primary color
      scaffoldBackgroundColor: Colors.blue, // Latar belakang biru
      textTheme: TextTheme(
        bodyLarge: TextStyle(fontFamily: _fontFamily),
      ),
    );
  }

  // Menentukan tema yang digunakan saat ini berdasarkan index
  ThemeData get currentTheme {
    switch (_selectedThemeIndex) {
      case 1:
        return darkTheme;
      case 2:
        return blueTheme;
      default:
        return lightTheme;
    }
  }

  get themeMode => null;

  void toggleTheme(ThemeMode themeMode) {}
}
