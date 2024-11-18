import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_statemanagement/theme_model.dart'; // pastikan mengimpor ThemeProvider

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text('Select Theme'),
            trailing: DropdownButton<int>(
              value: themeProvider.selectedThemeIndex,
              onChanged: (newValue) {
                if (newValue != null) {
                  themeProvider.changeTheme(newValue);
                }
              },
              items: [
                DropdownMenuItem(
                  value: 0,
                  child: Text('Light Theme'),
                ),
                DropdownMenuItem(
                  value: 1,
                  child: Text('Dark Theme'),
                ),
                DropdownMenuItem(
                  value: 2,
                  child: Text('Blue Theme'),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Select Font'),
            trailing: DropdownButton<String>(
              value: themeProvider.fontFamily,
              onChanged: (newFont) {
                if (newFont != null) {
                  themeProvider.changeFont(newFont);
                }
              },
              items: [
                DropdownMenuItem(
                  value: 'Poppins',
                  child: Text('Poppins'),
                ),
                DropdownMenuItem(
                  value: 'Roboto',
                  child: Text('Roboto'),
                ),
                DropdownMenuItem(
                  value: 'Arial',
                  child: Text('Arial'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
