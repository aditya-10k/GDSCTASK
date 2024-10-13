import 'package:flutter/material.dart';
import 'package:gdscapp/widgets/aboutus.dart';
import 'package:gdscapp/widgets/greetings.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  

  @override
  Widget build(BuildContext context) {

     bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color backgroundColor = isDarkMode ? Colors.black38! : Colors.grey[300]!;

    return SingleChildScrollView(
      child: Column(
            children: 
            [   
             Greetings(),
             Aboutus(),
            ],
          ),
    );
  }
 
}