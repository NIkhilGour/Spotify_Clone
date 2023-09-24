import 'package:flutter/material.dart';
import 'package:spotify_home/data/song_data.dart';
class Scrollline extends StatelessWidget {
  const Scrollline({super.key,this.imagename,this.song,this.artist});
  final imagename;
  final song;
  final artist;
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
        
              for(int i=0;i<5;i++)
              //SizedBox(width: 10,),
              TakeData(song: availablesong[i].name,imagename: availablesong[i].songimage,artist: availablesong[i].artist,)

              
        ],
      ),
    );
  }
}

class TakeData extends StatelessWidget {
  const TakeData({super.key, this.imagename, this.song, this.artist});
  final imagename;
  final song;

  final artist;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 160,
      color: Colors.black,
      //padding: const EdgeInsets.all(2),
      margin: const EdgeInsets.all(7),
      child: Column(
        children: [
          Image.asset(imagename, height: 155, width: 160, fit: BoxFit.fill),
          const SizedBox(
            height: 5,
          ),
          Text(
            song,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Text(
            artist,
            style: const TextStyle(
              color: Color.fromARGB(93, 158, 158, 158),
              fontSize: 15,
              fontFamily: 'Raleway',
            ),
          ),
        ],
      ),
    );
  }
}
