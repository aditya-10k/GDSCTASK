import 'package:flutter/material.dart';
import 'package:gdscapp/workingcomps/forlinks.dart';
import 'package:url_launcher/url_launcher.dart';

class Endlinks extends StatefulWidget {
  const Endlinks({super.key});

  @override
  State<Endlinks> createState() => _EndlinksState();
}

class _EndlinksState extends State<Endlinks> {



   void newurl(String link) async{
     Uri linkk = Uri.parse(link);
     try{
      await canLaunchUrl(linkk) ;
    await launchUrl(linkk);
      }
   catch(e) {
    print(e.toString());
  }
    

 }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 60,),
        Container(
          child: Image.asset('assets/GDSCLogo-removebg-preview.png',
          height: 80,),
        ),

        Row(
  children: [
    for (int i = 0; i < forlinks.length; i++)
      GestureDetector(
        onTap: ()  {
            newurl(forlinks[i]["link"]);
        },
        child: Container(
          child: forlinks[i]["icon"],
        ),
      ),
  ],
)

      ],
    );
  }
}