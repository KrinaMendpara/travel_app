import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'package:travel_app/model/image_list.dart';
import 'package:travel_app/screen/image_screen.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}

class _DiscoverScreenState extends State<DiscoverScreen>
    with TickerProviderStateMixin {
  int currentIndex = 0;
  int selectedIndex = 0;
  int tabIndex = 0;
  PageController controller = PageController();
  late final TabController _tabController;
  late final TabController tabController = TabController(
    length: 4,
    vsync: this,
  );

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      extendBody: true,
      appBar: AppBar(
        shadowColor: const Color.fromRGBO(0, 0, 0, 0.8),
        iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Discover',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 27,
            color: Colors.black,
          ),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Image.asset(
              'assets/images/img_6.png',
              height: 33,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        bottom: TabBar(
          controller: _tabController,
          tabs: const [
            Tab(
              text: 'Popular',
            ),
            Tab(
              text: 'Featured',
            ),
            Tab(
              text: 'Most Visited',
            ),
            Tab(
              text: 'Europe',
            ),
            Tab(
              text: 'Asia',
            ),
          ],
          unselectedLabelColor: Colors.black,
          unselectedLabelStyle:
              const TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
          isScrollable: true,
          indicatorColor: Colors.transparent,
          // indicator: const BoxDecoration(),
          labelColor: const Color.fromRGBO(64, 58, 122, 1),
          labelStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w900,
          ),
        ),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 8, top: 10),
                child: CircleAvatar(
                  child: Image.asset(
                    'assets/images/img_1.png',
                  ),
                ),
              ),
              const Positioned(
                right: 33,
                top: 44,
                child: SizedBox(
                  height: 9,
                  width: 9,
                  child: CircleAvatar(
                    backgroundColor: Color.fromRGBO(255, 98, 107, 1),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: const Drawer(),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          Container(
            padding: const EdgeInsets.only(
              left: 20,
              top: 10,
            ),
            child: SizedBox(
              height: 250,
              child: PageView.builder(
                itemCount: items.length,
                controller: controller,
                onPageChanged: (v) {
                  setState(() {
                    selectedIndex = v;
                  });
                },
                itemBuilder: (ctx, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => ImageScreen(
                            imageList: items[index],
                          ),
                        ),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        Container(
                          padding: const EdgeInsets.only(
                            left: 29,
                          ),
                          margin: const EdgeInsets.only(right: 20),
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage(items[index].imageUrl),
                              fit: BoxFit.fill,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(19)),
                          ),
                        ),
                        Container(
                          height: 81,
                          margin: const EdgeInsets.only(right: 20),
                          padding: const EdgeInsets.only(left: 22, top: 2),
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(160, 160, 160, 1),
                            borderRadius: BorderRadius.circular(19),
                            backgroundBlendMode: BlendMode.multiply,
                          ),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    children: [
                                      Text(
                                        items[index].title,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 20,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 10,
                                    ),
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: Image.asset(
                                        'assets/images/img_2.png',
                                        fit: BoxFit.fill,
                                        height: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  GestureDetector(
                                    child: const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(244, 209, 80, 1),
                                      size: 15,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(244, 209, 80, 1),
                                      size: 15,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(244, 209, 80, 1),
                                      size: 15,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(244, 209, 80, 1),
                                      size: 15,
                                    ),
                                  ),
                                  GestureDetector(
                                    child: const Icon(
                                      Icons.star,
                                      color: Color.fromRGBO(244, 209, 80, 1),
                                      size: 15,
                                    ),
                                  ),
                                  const Text(
                                    ' 4.5',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: Color.fromRGBO(255, 255, 255, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 16),
                child: AnimatedSmoothIndicator(
                  activeIndex: selectedIndex,
                  count: items.length,
                  effect: const ExpandingDotsEffect(
                    dotWidth: 6,
                    dotHeight: 6,
                    dotColor: Color.fromRGBO(185, 177, 255, 1),
                    activeDotColor: Color.fromRGBO(137, 124, 255, 1),
                  ),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.only(top: 20, left: 36),
                child: const Text(
                  'Recommended',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                ),
              ),
              Container(
                padding: const EdgeInsets.only(top: 20, right: 25),
                child: const Text(
                  'View All',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
          Column(
            children: [
              GridView.builder(
                padding: const EdgeInsets.all(20),
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                ),
                itemCount: items.length,
                itemBuilder: (ctx, index) {
                  return Hero(
                    tag: items[index],
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) =>
                                ImageScreen(imageList: items[index]),
                          ),
                        );
                      },
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(left: 20, right: 20),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: NetworkImage(items[index].imageUrl),
                                fit: BoxFit.fill,
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          Container(
                            height: 50,
                            padding: const EdgeInsets.only(top: 2, left: 2),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color.fromRGBO(160, 160, 160, 1),
                              borderRadius: BorderRadius.circular(10),
                              backgroundBlendMode: BlendMode.multiply,
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        top: 5,
                                        left: 7,
                                      ),
                                      child: Text(
                                        items[index].title,
                                        textAlign: TextAlign.left,
                                        style: const TextStyle(
                                          fontWeight: FontWeight.w400,
                                          fontSize: 12,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.only(top: 5, left: 7),
                                  child: Row(
                                    children: [
                                      GestureDetector(
                                        child: const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(244, 209, 80, 1),
                                          size: 15,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(244, 209, 80, 1),
                                          size: 15,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(244, 209, 80, 1),
                                          size: 15,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(244, 209, 80, 1),
                                          size: 15,
                                        ),
                                      ),
                                      GestureDetector(
                                        child: const Icon(
                                          Icons.star,
                                          color:
                                              Color.fromRGBO(244, 209, 80, 1),
                                          size: 15,
                                        ),
                                      ),
                                      const Text(
                                        ' 4.5',
                                        style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 13,
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 8,
                            bottom: 40,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 8,
                              child: Image.asset(
                                'assets/images/img_2.png',
                                fit: BoxFit.fill,
                                height: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 80,
        margin: const EdgeInsets.only(left: 15, right: 15, bottom: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(44),
          color: const Color.fromRGBO(255, 255, 255, 1),
          boxShadow: const [
            BoxShadow(
              offset: Offset(0, -2),
              blurRadius: 20,
              color: Color.fromRGBO(0, 0, 0, 0.2),
            ),
          ],
        ),
        child: TabBar(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          controller: tabController,
          labelColor: const Color.fromRGBO(106, 98, 183, 1),
          indicatorColor: const Color.fromRGBO(185, 177, 255, 1),
          unselectedLabelColor: const Color.fromRGBO(185, 212, 220, 1),
          indicatorSize: TabBarIndicatorSize.label,
          indicatorWeight: 4,
          indicatorPadding: const EdgeInsets.only(bottom: 1),
          indicator:
              // const CustomTabIndicator(),
              UnderlineTabIndicator(
            borderRadius: BorderRadius.circular(1.5),
            borderSide: const BorderSide(
              width: 3,
              color: Color.fromRGBO(106, 98, 183, 1),
            ),
            insets: const EdgeInsets.symmetric(horizontal: 30, vertical: 2),
          ),
          tabs: const [
            Tab(
              icon: Icon(
                Icons.home_filled,
                size: 35,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.calendar_month_outlined,
                size: 35,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
            ),
            Tab(
              icon: Icon(
                Icons.person_rounded,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
