//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:audio_video_progress_bar/audio_video_progress_bar.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  void removesheet() {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 45,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: removesheet,
                  icon: const Icon(Icons.arrow_downward_outlined,
                      color: Colors.white),
                ),
                const SizedBox(
                  width: 59,
                ),
                const Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Playing from artist',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'PropheC',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 70,
                ),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                )
              ],
            ),
            const SizedBox(
              height: 70,
            ),
            Container(
              width: 320,
              height: 300,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(16)),
              ),
              child: Image.asset(
                'assets/images/to_the_star.jpg',
      
                //fit: BoxFit.fill,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: 5,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'To the star',
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'PropheC',
                      style: TextStyle(fontSize: 17, color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  width: 35,
                ),
                Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.white,
                  size: 32,
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 10,
              width: 300,
              child: ProgressBar(
                progressBarColor: Colors.white,
                thumbColor: Colors.white,
                thumbRadius: 5,
                baseBarColor: const Color.fromARGB(68, 158, 158, 158),
               // bufferedBarColor: ,
                progress: const Duration(milliseconds: 1000),
               // buffered: Duration(milliseconds: 2000),
                total: const Duration(milliseconds: 5000),
                timeLabelLocation: TimeLabelLocation.below,
              
               
                
                onSeek: (duration) {
                  print('User selected a new time: $duration');
                },
              ),
            ),
      
            const SizedBox(height: 20,),
      
            const Row(
      
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              
      
                  children: [
      
                        Icon(Icons.shuffle,color: Colors.white,size: 30,),
      
                        Icon(Icons.skip_previous_rounded,color: Colors.white,size: 40,),
      
                        Icon(Icons.play_circle_fill,color: Colors.white,size: 60,),
      
                        Icon(Icons.skip_next_rounded,color: Colors.white,size: 40,),
      
                        Icon(Icons.repeat_rounded,color: Colors.white,size: 30,)
                  ],
            ),
            const SizedBox(height: 10,),
            const Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      SizedBox(width: 35,),
                      Icon(Icons.devices_outlined,color: Colors.white,size: 25,),
                      SizedBox(width: 200,),
                      Icon(Icons.share_outlined,color: Colors.white,size: 22,),
                      SizedBox(width: 40,),
                      Icon(Icons.queue_music_outlined,color: Colors.white,size: 25,)
                  ],

            ),
            const SizedBox(height: 20,),
                Container(
                    height: 300,
                    width: 330,
                    decoration:  BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueAccent
                    ),

                    child:   Column(

                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                            const SizedBox(height: 10,),

                            Row(
                                
                                
                              
                                  children: [

                                    const SizedBox(width: 15,),

                                      const Text('Lyrics',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 22,
                                        ),
                                      ),

                                      const SizedBox(width: 160,),

                                      Container(
                                            height: 30,
                                            width: 30,
                                        decoration: const BoxDecoration(
                                              borderRadius:BorderRadius.all(Radius.circular(20)),
                                              color: Color.fromARGB(163, 77, 76, 76)
                                        ),
                                        child: const Icon(Icons.share_outlined,color: Colors.white,
                                            size: 20,
                                        ),),

                                        const SizedBox(width: 20,),

                                        Container(
                                            height: 30,
                                            width: 30,
                                        decoration: const BoxDecoration(
                                              borderRadius:BorderRadius.all(Radius.circular(20)),
                                              color: Color.fromARGB(163, 77, 76, 76)
                                        ),
                                        child: const Icon(Icons.arrow_upward,color: Colors.white,
                                            size: 20,
                                        ),),
                                  ],
                            )
                          ],

                    ),
                )
          ],
        ),
      ),
    );
  }
}
