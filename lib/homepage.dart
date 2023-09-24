import 'package:flutter/material.dart';
import 'package:spotify_home/grid.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Good afternoon',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Icon(
                Icons.notifications_outlined,
                color: Colors.white,
                size: 27,
              ),
              Icon(
                Icons.access_time_rounded,
                color: Colors.white,
                size: 27,
              ),
              Icon(
                Icons.settings,
                color: Colors.white,
                size: 27,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 35,
                width: 70,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(65, 158, 158, 158),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Center(
                  child: Text(
                    'Music',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 35,
                width: 150,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(65, 158, 158, 158),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                child: const Center(
                  child: Text(
                    'Podcasts & Shows',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Grid(),
        ],
      ),
    );
  }
}
