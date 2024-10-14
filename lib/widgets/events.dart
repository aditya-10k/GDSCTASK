import 'package:flutter/material.dart';
import 'package:gdscapp/workingcomps/eventinfo.dart';
import 'package:gdscapp/workingcomps/themestore.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color backgroundColor = isDarkMode ? Colors.black38 : Colors.grey[300]!;
    return SingleChildScrollView(
      child: Column(
        children: [
          GradientText('EVENTS',
                  colors: googlegradient,
                  style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                  ),
                  ),
                  SizedBox(height: 15,),
                  SizedBox(height: 15,),
             Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    for (int i = 0; i < eventinfo.length; i++) ...[
      AnimatedContainer(
        width: MediaQuery.of(context).size.width - 40,
        padding: const EdgeInsets.all(13),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(10),
        ),
        duration: const Duration(milliseconds: 1000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [      
            ChimeBellText(
              text: eventinfo[i]["title"],
              duration: const Duration(seconds: 4),
              type: AnimationType.word,
              textStyle: const TextStyle(fontSize: 25),
            ),
            const SizedBox(height: 15),
            ChimeBellText(
              text: eventinfo[i]["desc"],
              duration: const Duration(seconds: 4),
              type: AnimationType.word,
              textAlignment: TextAlignment.center,
              textStyle: const TextStyle(fontSize: 15
              ),
            ),
          ],
        ),
      ),
      const SizedBox(height: 20),  // SizedBox after each container
    ],
  ],
)

        ],
      ),
    );
  }
}