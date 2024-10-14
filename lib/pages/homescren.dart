import 'package:floating_navigation_bar/floating_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:gdscapp/widgets/events.dart';
import 'package:gdscapp/widgets/home.dart';
import 'package:gdscapp/widgets/topheader.dart';
import 'package:icons_plus/icons_plus.dart';



class Homescren extends StatefulWidget {
  const Homescren({super.key,required this.onThemeChanged, required this.themeMode });

  final VoidCallback onThemeChanged;
  final ThemeMode themeMode;


  @override
  State<Homescren> createState() => _HomescrenState();
}

class _HomescrenState extends State<Homescren> {

 

  final List<Widget> screen = [
  Home(),
  Events(),

];

  int currentindex = 0;

  final PageController _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {

           

    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    Color backgroundColor = isDarkMode ? Colors.black38 : Colors.grey[300]!;


    return Scaffold(
      body: SafeArea(
        child:Column(
          children: [
            Topheader(onThemeChanged:widget.onThemeChanged, themeMode: widget.themeMode),
            Expanded(
              child: PageView(
                           children: screen,
                           controller: _controller ,
                           onPageChanged: (index){
                             setState(() {
                               currentindex = index;
                             });
                           },
                         ),
            ),
          ],
        ), 
        
        
      ),
      bottomNavigationBar:FloatingNavigationBar(
        backgroundColor: backgroundColor ,
        indicatorColor: Colors.transparent,
        items:
        [
          NavBarItems(icon:currentindex==0? MingCute.home_1_fill : MingCute.home_1_line , title: 'Home'),
          NavBarItems(icon:currentindex==1? Bootstrap.calendar_event_fill : Bootstrap.calendar_event , title: 'Events')
        ], 
        onChanged: (index){
          setState(() {
            currentindex = index;
            _controller.jumpToPage(index);
          });
        },
        
        )
    );
  }
 
}