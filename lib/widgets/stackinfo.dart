import 'package:flutter/material.dart';
import 'package:gdscapp/workingcomps/themestore.dart';
import 'package:gdscapp/workingcomps/wedo.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class Stackinfo extends StatefulWidget {
  const Stackinfo({super.key});

  @override
  State<Stackinfo> createState() => _StackinfoState();
}

class _StackinfoState extends State<Stackinfo> {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color backgroundColor = isDarkMode ? Colors.black38 : Colors.grey[300]!;

    return  Column(
              children: [
                SizedBox(height: 30,),
                GradientText('Our Stacks',
                  colors: googlegradient,
                  style: TextStyle(
                  fontSize: 31,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none
                  ),
                  ),
                  SizedBox(height: 10,),
                  for (int i = 0; i < wedo.length; i++)...[
                  Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: backgroundColor
                      ),
                      child: ListTile(
                        shape: StadiumBorder(
                          side: BorderSide(style: BorderStyle.none)
                        ),
                        title: Text(
                          textAlign: TextAlign.center,
                          '${wedo[i]["emoji"]} ${wedo[i]["text"]}', )
                          ),
                    ),
                  ),
                      SizedBox(height: 15,)
                  ]
              ],
             );
  }
}