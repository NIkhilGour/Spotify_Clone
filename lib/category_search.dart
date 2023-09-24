import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:spotify_home/data/category.dart';
import 'package:spotify_home/data/category_class.dart';
class CategorySearch extends StatelessWidget {
  const CategorySearch({super.key,required this.categorySong});
  final CategorySong categorySong;
  @override
  Widget build(BuildContext context) {
    
    return Container(
          padding: const EdgeInsets.all(8),
          margin: const EdgeInsets.all(3),
          height: 150,
          width: 20,

          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(8),
              color: categorySong.color,

          ),

          


          child: Text(categorySong.title,
              style: const TextStyle(

                color: Colors.white,
                fontSize: 17,
                fontWeight: FontWeight.bold
              ),
          ),




    );
  }
}