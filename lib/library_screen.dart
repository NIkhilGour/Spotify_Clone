import 'package:flutter/material.dart';
import 'package:spotify_home/data/song_data.dart';
import 'package:spotify_home/song.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Song song;
    return Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 34,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                Container(
                  margin: const EdgeInsets.all(8),
                  padding: const EdgeInsets.all(7.5),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(19),
                    color: Colors.pink,
                  ),
                  child: const Center(
                    child: Text(
                      'N',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  'Your Library',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.normal,
                  ),
                ),
                const SizedBox(
                  width: 49,
                ),
                const Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 37,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 12,
                ),
                Container(
                  height: 27,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: Colors.white
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(
                      child: Text(
                    'Playlist',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 27,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: Colors.white
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(
                      child: Text(
                    'Artists',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                const SizedBox(
                  width: 10,
                ),
                Container(
                  height: 27,
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    //color: Colors.white
                    border: Border.all(color: Colors.white),
                  ),
                  child: const Center(
                      child: Text(
                    'Albums',
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 525,
              child: ListView(
                scrollDirection: Axis.vertical,
                padding: const EdgeInsets.all(8),
                itemExtent: 75,
                
                children: [
                    for(song in availablesong)
                    ArtistLibrary(image: song.songimage, artistname: song.artist),
                    //const SizedBox(height: 10,),
                ],
              
              ),
            ),
            
          ],
        ));
  }
}

class ArtistLibrary extends StatelessWidget {
  const ArtistLibrary(
      {super.key, required this.image, required this.artistname});
  final image;
  final artistname;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 10,
        ),
        CircleAvatar(
          maxRadius: 30,
          backgroundImage: AssetImage(image),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          artistname,
          style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),
        ),
      ],
    );
  }
}
