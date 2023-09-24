import 'package:flutter/material.dart';
import 'package:spotify_home/homepage.dart';
import 'package:spotify_home/library_screen.dart';
import 'package:spotify_home/search_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedindex=0;

  Widget activescreen =const Homepage();

  void selectindex(index)
  {
        setState(() {

              _selectedindex=index;
        });
  }
  
  @override
  Widget build(BuildContext context) {
    if(_selectedindex==0)
    {
      activescreen=const Homepage();
    }
    if(_selectedindex==1)
    {
        activescreen=const SearchScreen();
    }

    if(_selectedindex==2)
    {
      activescreen=const LibraryScreen();
    }
    return Scaffold(

          body: activescreen ,
          backgroundColor: Colors.black,

          bottomNavigationBar: BottomNavigationBar(
            

            backgroundColor: Colors.black,

            selectedItemColor: Colors.white,

            unselectedItemColor: Colors.grey,
           
          
            currentIndex: _selectedindex,
            onTap:selectindex,
            items: const [

                  BottomNavigationBarItem(icon:Icon(Icons.home_filled,),label:'Home', ),

                  BottomNavigationBarItem(icon: Icon(Icons.search_outlined),label: 'Search'),

                  BottomNavigationBarItem(icon: Icon(Icons.library_music_outlined),label: "Library"),
            ],


          ),
    );
  }
}