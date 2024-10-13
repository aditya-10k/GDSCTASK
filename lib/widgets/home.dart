import 'package:flutter/material.dart';
import 'package:gdscapp/widgets/greetings.dart';
import 'package:gdscapp/workingcomps/themestore.dart';
import 'package:lottie/lottie.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';


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

    return Column(
          children: 
          [   
           Greetings(),

    
          ],
        );
  }
 
}