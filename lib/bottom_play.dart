import 'package:flutter/material.dart';
import 'player.dart';

class BottomPlay extends StatefulWidget {
  const BottomPlay({super.key});

  @override
  State<BottomPlay> createState() => _BottomPlayState();
}

class _BottomPlayState extends State<BottomPlay> {
  void ontap() {
    setState(() {
      showModalBottomSheet(
        context: context,
        builder: (ctx) => const Player(),
        isScrollControlled: true,
        backgroundColor: Colors.black,
        useSafeArea: true,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      height: 55,
      width: 370,
      decoration: BoxDecoration(
        color: const Color.fromARGB(63, 175, 128, 255),
        borderRadius: BorderRadius.circular(8),
        // boxShadow:[BoxShadow(color:Colors.black26 ,blurRadius :3)],
      ),
      child: Row(
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const SizedBox(
            width: 8,
          ),
          Container(
            height: 50,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(8.0))),
            child: IconButton(
              onPressed: ontap,
              icon: Image.asset(
                'assets/images/to_the_star.jpg',
              ),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          const Column(
//mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                'To the star',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                'The PropheC',
                style: TextStyle(
                  color: Color.fromARGB(65, 158, 158, 158),
                ),
              ),
            ],
          ),
          const SizedBox(
            width: 54,
          ),
          const Icon(
            Icons.computer_outlined,
            color: Color.fromARGB(182, 158, 158, 158),
            size: 30,
          ),
          const SizedBox(
            width: 25,
          ),
          const Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 30,
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.play_arrow,
            color: Colors.white,
            size: 30,
          ),
        ],
      ),
    );
  }
}
