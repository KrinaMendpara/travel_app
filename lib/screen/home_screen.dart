import 'package:flutter/material.dart';

import 'package:travel_app/screen/discover_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 480,
            height: 415,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(37),
                  bottomLeft: Radius.circular(37)),
              image: DecorationImage(
                image: NetworkImage(
                    'https://media.cntraveler.com/photos/5c263e13a6a145617b7c77ba/1:1/w_1502,h_1502,c_limit/Karma-Beach-Club_Karma-Beach-Bali-.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 30, top: 30),
            child: const Text(
              'Winter \nVacation Trips',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 36,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 38, right: 80, top: 30),
            child: const Text(
              'Enjoy your winter vacations with warmth and amazing sightseeing on the mountains. Enjoy the best experience with us!',
              style: TextStyle(
                fontStyle: FontStyle.normal,
                fontSize: 15,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 30),
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const DiscoverScreen(),
                      ));
                    },
                    icon: Image.asset(
                      'assets/images/img_8.png',
                      height: 16,
                      width: 30,
                    ),
                    label: const Text(
                      '  !Let`s Go',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(106, 98, 183, 1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      minimumSize: const Size(181, 50),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
