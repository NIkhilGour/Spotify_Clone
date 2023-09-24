import 'package:flutter/material.dart';
import 'package:spotify_home/search_screen.dart';

class Bottom extends StatelessWidget {
  const Bottom({super.key});

  void selectscreen(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const SearchScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Icon(
          Icons.home_filled,
          color: Colors.white,
          size: 30,
        ),
        IconButton(
          onPressed: () {
            selectscreen(context);
          },
          icon: const Icon(
            Icons.search,
            color: Colors.white,
            size: 30,
          ),
        ),
        const Icon(
          Icons.library_music_outlined,
          color: Colors.white,
          size: 30,
        ),
      ],
    );
  }
}
