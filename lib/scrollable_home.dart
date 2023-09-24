import 'package:flutter/material.dart';
import 'package:spotify_home/diff_category.dart';
import 'grid.dart';
import 'scrollline.dart';
import 'song.dart';
import 'package:spotify_home/data/song_data.dart';

class ScrollableHome extends StatelessWidget {
  const ScrollableHome({super.key});

  @override
  Widget build(BuildContext context) {
    //Song song;
    return SizedBox(
      height: 429,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width - 20,
              height: 230,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10),
                children: [
                  for (var i = 0; i < 6; i++)
                    StoreBox(
                      imagename: availablesong[i].songimage,
                      imagetext: availablesong[i].name,
                    )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
           const DifferentCategory(),
            const SizedBox(
              height: 15,
            ),
            const Scrollline(),
            Image.asset(
              'assets/images/mi_amor.jpg',
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
