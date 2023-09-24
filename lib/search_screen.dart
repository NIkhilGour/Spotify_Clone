import 'package:flutter/material.dart';
import 'package:spotify_home/category_search.dart';
import 'package:spotify_home/data/category.dart';
import 'package:spotify_home/data/category_class.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
          backgroundColor: Colors.black,
          
          body: Column(
                crossAxisAlignment: CrossAxisAlignment.center,

                
                children: [
                  
                  const SizedBox(height: 40,width: 10,),

                  
                  //SizedBox(width: 10,),
                  const Text('Search',
                    style: TextStyle(
                      
                      color: Colors.white,
                      fontSize: 27,
                      fontWeight: FontWeight.bold
                    ),
                  ),

                    const SizedBox(height:10 ,),
                    Container(

                        height: 40,
                        width: 390,

                      decoration: BoxDecoration(

                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white
                      ),

                      child:const Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              
                              SizedBox(width: 10,),
                              Icon(Icons.search,size: 30,),
                              SizedBox(width: 10,),
                              Text(
                                'What do you want to listen?',

                                style: TextStyle(

                                      fontSize: 19,
                                      fontWeight: FontWeight.bold
                                ),
                              )
                            ],
                      ) ,

                       

                    ),

                     const SizedBox(height: 10,),

                     SizedBox(
                      height: 545,
                       child: GridView(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.8,crossAxisSpacing: 10,mainAxisSpacing: 10),
                        scrollDirection: Axis.vertical,
                        children: [
                     
                              for(final element in SearchCategory)
                              CategorySearch(categorySong: element)
                        ],
                       
                       ),
                     )
                ],
            
          ),
    
    );
  }
}