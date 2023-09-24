import 'package:flutter/material.dart';

class DifferentCategory extends StatelessWidget {
  const DifferentCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 55,
                width: 55,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  //borderRadius: BorderRadius.circular(20),
                  color: Color.fromARGB(65, 158, 158, 158),
                ),
                child: const Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Color.fromARGB(154, 255, 255, 255),
                  size: 30,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'MORE LIKE',
                    style: TextStyle(
                        color: Color.fromARGB(179, 158, 158, 158),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Milind Gaba',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  )
                ],
              ),
            ]);
  }
}