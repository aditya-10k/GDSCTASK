import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class Topheader extends StatefulWidget {
  const Topheader({super.key,required this.onThemeChanged, required this.themeMode});

   final VoidCallback onThemeChanged;
  final ThemeMode themeMode;

  @override
  State<Topheader> createState() => _TopheaderState();
}

class _TopheaderState extends State<Topheader> {
  @override
  Widget build(BuildContext context) {
     bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: widget.onThemeChanged ,
                icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode,
                ),),
                SizedBox(width: 10,),
                Image.asset('assets/icon-removebg-preview.png',
                height: 70,
                width: 250,
                ),
                SizedBox(width: 10,),
                IconButton(onPressed: (){}, 
                icon: Icon( Bootstrap.robot)
                )
              ],
            );
  }
}