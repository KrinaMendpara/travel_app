import 'package:flutter/material.dart';
import 'package:travel_app/model/image_list.dart';

class ImageScreen extends StatelessWidget {
  ImageScreen({required this.imageList, super.key});

  final ImageList imageList;

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldState,
      drawer: const Drawer(),
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Hero(
            tag: imageList,
            child: Container(
              height: 389,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(imageList.imageUrl),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            top: 20,
            left: 10,
            child: IconButton(
              icon: Image.asset('assets/images/img_6.png'),
              onPressed: () {
                _scaffoldState.currentState!.openDrawer();
              },
            ),
          ),
          Positioned(
            top: 348,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Material(
                borderRadius: BorderRadius.circular(37),
                color: const Color.fromRGBO(255, 255, 255, 1),
                child: ListView(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Text(
                            imageList.title,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w900,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 5),
                      child: Row(
                        children: [
                          const SizedBox(
                            height: 15,
                            width: 15,
                            child: FittedBox(
                              fit: BoxFit.cover,
                              child: ImageIcon(
                                AssetImage('assets/images/img_7.png'),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 5),
                            child: Text(
                              imageList.location,
                              style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 21, top: 11),
                      child: Row(
                        children: [
                          GestureDetector(
                            child: const Icon(
                              Icons.star,
                              color: Color.fromRGBO(244, 209, 80, 1),
                              size: 12,
                            ),
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.star,
                              color: Color.fromRGBO(244, 209, 80, 1),
                              size: 12,
                            ),
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.star,
                              color: Color.fromRGBO(244, 209, 80, 1),
                              size: 12,
                            ),
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.star,
                              color: Color.fromRGBO(244, 209, 80, 1),
                              size: 12,
                            ),
                          ),
                          GestureDetector(
                            child: const Icon(
                              Icons.star,
                              color: Color.fromRGBO(244, 209, 80, 1),
                              size: 12,
                            ),
                          ),
                          const Text(
                            ' 4.9',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Stack(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 31, left: 22),
                          child: Row(
                            children: [
                              Container(
                                height: 36,
                                width: 104,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  color: const Color.fromRGBO(243, 243, 243, 1),
                                ),
                                child: const Padding(
                                  padding: EdgeInsets.only(
                                    top: 8,
                                  ),
                                  child: Text(
                                    '5',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(left: 20, right: 7),
                                child: ImageIcon(
                                  AssetImage('assets/images/img_9.png'),
                                ),
                              ),
                              const Text(
                                '5 Days',
                                style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 31,
                          left: 100,
                          child: SizedBox(
                            height: 36,
                            width: 29,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(137, 124, 255, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13.5),
                                ),
                                padding: const EdgeInsets.all(2),
                              ),
                              child: const Icon(
                                Icons.add,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 31,
                          left: 20,
                          child: SizedBox(
                            height: 36,
                            width: 29,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(137, 124, 255, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13.5),
                                ),
                                padding: const EdgeInsets.all(2),
                              ),
                              child: const Icon(
                                Icons.remove,
                                size: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 28, left: 20),
                          child: Text(
                            'Description',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 32, top: 18),
                      child: Text(
                        imageList.description,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$${imageList.price}',
                            style: const TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(106, 98, 183, 1),
                            ),
                          ),
                          const Text(
                            '/Package',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(106, 98, 183, 1),
                            ),
                          ),
                          Container(
                            height: 45,
                            width: 180,
                            padding: const EdgeInsets.only(right: 20, left: 20),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(106, 98, 183, 1),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(28),
                                ),
                              ),
                              child: const Text(
                                'Book Now',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
