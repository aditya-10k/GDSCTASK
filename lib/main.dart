import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:gdscapp/pages/homescren.dart';
import 'package:gdscapp/workingcomps/themestore.dart';


Future<void> main() async
 {
  await dotenv.load();
  runApp( MyApp());  
 }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ThemeMode _themeMode = ThemeMode.light ;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GDSC App',
      debugShowCheckedModeBanner: false,
      theme: googleLightTheme,
      darkTheme: googleDarkTheme,
      themeMode: _themeMode,
      
      home: Homescren(onThemeChanged: _toggleTheme, themeMode: _themeMode),
  
      );
  }
void _toggleTheme() {
    setState(() {
      _themeMode = _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }
}
      