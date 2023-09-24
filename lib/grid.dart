import 'package:flutter/material.dart';
import 'package:spotify_home/bottom.dart';
import 'package:spotify_home/bottom_play.dart';
import 'package:spotify_home/scrollable_home.dart';
import 'song.dart';


class Grid extends StatelessWidget {
  const Grid({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ScrollableHome(),

        SizedBox(
          height: 7,
        ),

        
       

        BottomPlay(),

        SizedBox(
          height: 10,
        ),

       // Bottom(),

        //BottomNavigationBar(items:[BottomNavigationBarItem(icon: Icon(Icons.home)),BottomNavigationBarItem(icon: Icon(Icons.search))]),
      ],
    );
  }
}

class StoreBox extends StatelessWidget {
  const StoreBox({super.key, this.imagename, this.imagetext});
  final imagename;
  final imagetext;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 165,
      decoration: const BoxDecoration(
        color: Color.fromARGB(65, 158, 158, 158),
        borderRadius: BorderRadius.all(Radius.circular(10)),
      ),
      child: Row(
        children: [
          Image.asset(imagename),
          const SizedBox(
            width: 10,
          ),
          Text(
            imagetext,
            textAlign: TextAlign.center,
            style:
                const TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
