import 'package:flutter/material.dart';
import 'package:gdscapp/workingcomps/themestore.dart';
import 'package:lottie/lottie.dart';
import 'package:pretty_animated_text/pretty_animated_text.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Greetings extends StatefulWidget {
  const Greetings({super.key});

  @override
  State<Greetings> createState() => _GreetingsState();
}

class _GreetingsState extends State<Greetings> {
  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
             
            SizedBox(height: 10,),
            
            

            // SizedBox(height: 100,),

            Container(
              height: 200,
              child: LottieBuilder.network('https://lottie.host/7e341238-02ec-42e6-a840-c21d8c3d21b3/VMp5JILthb.json'),
            ),

            SizedBox(height: 50,),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GradientText('GDSC',
                colors: googlegradient,
                style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                decoration: TextDecoration.none
                ),
                ),
                SizedBox(width: 5,),
                BlurText(
      text: 'DJSCE' ,
      duration: const Duration(milliseconds: 500), 
      type: AnimationType.word,
      textAlignment: TextAlignment.center,
      textStyle: TextStyle(
        fontWeight: FontWeight.w300,
        fontSize: 40),
    ),
              ],
            ),

             SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: BlurText(
                    text: 'Meet and learn with other developers and build solutions for communities with Google technology.' ,
                    duration: const Duration(seconds: 4), 
                    type: AnimationType.word,
                    textAlignment: TextAlignment.center,
                    textStyle: TextStyle(
                      fontSize: 14),
                  ),
            ),

  SizedBox(height: 20,),

    Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Collaborate',
        style: TextStyle(
          color: Color(0xFF4285F4),
          fontSize: 18
        ),),
        
        Text('●',),

        Text('Learn',
        style: TextStyle(
          color: Color(0xFFEA4335),
          fontSize: 18
        ),),

        Text('●',),

        Text('Explore',
        style: TextStyle(
          color: Color(0xFFFBBC05),
          fontSize: 18
        ),),
       
        Text('●',),
        
        Text('Create',
        style: TextStyle(
          color: Color(0xFF34A853),
          fontSize: 18
        ),)
      ],
    )
          ],
        );
  }
}