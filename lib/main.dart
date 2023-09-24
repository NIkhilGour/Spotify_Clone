import 'package:flutter/material.dart';
import 'package:spotify_home/homepage.dart';
import 'package:spotify_home/tabs_screen.dart';

void main() {
  runApp(

         const  MaterialApp(
          
            home: Scaffold(
              //backgroundColor: Colors.black,
              
              body: TabsScreen(),
            ),
          )
         
        
  );
}

