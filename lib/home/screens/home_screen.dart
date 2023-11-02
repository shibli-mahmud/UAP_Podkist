import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/constants.dart';
import 'package:spotify/data/data.dart';
import 'package:spotify/kcolors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentGreetings = '';
  DateTime currentTime = DateTime.now();
  int currentIndex = 0;

  @override
  void initState() {
    super.initState();
    if (currentTime.hour < 12) {
      currentGreetings = 'Good Morning';
    } else if (currentTime.hour < 17) {
      currentGreetings = 'Good Afternoon';
    } else {
      currentGreetings = 'Good Evening';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      children: [
                        Text(
                          currentGreetings,
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Only for you',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 270,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().songs.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().songs[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().songs[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              Data().songs[index].artist,
                              style: TextStyle(
                                color: Colors.grey.shade300,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Courses',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().topmixs.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().topmixs[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().topmixs[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Artists',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().artists.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().artists[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().artists[index].name,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Most Popular',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().tophits.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().tophits[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().tophits[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 16.0),
                    child: Text(
                      'Podcasts',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 240,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: Data().podcasts.length,
                      padding: const EdgeInsets.all(16),
                      itemBuilder: (context, index) => Container(
                        width: 155,
                        margin: const EdgeInsets.only(right: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                Data().podcasts[index].image,
                                fit: BoxFit.cover,
                                height: 155,
                              ),
                            ),
                            const SizedBox(height: 24),
                            Text(
                              Data().podcasts[index].title,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: const EdgeInsets.only(
                bottom: 35,
              ),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment(0.0, -1.0),
                  end: Alignment(0.0, 0.4),
                  colors: [
                    Colors.transparent,
                    KColors.bgColor,
                  ],
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = 0;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            currentIndex == 0
                                ? Constants.homeAlt
                                : Constants.home,
                            height: 25,
                            color:
                                currentIndex == 0 ? Colors.white : Colors.grey,
                          ),
                          const SizedBox(height: 14),
                          Text(
                            'Home',
                            style: TextStyle(
                              color: currentIndex == 0
                                  ? Colors.white
                                  : Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = 1;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            currentIndex == 1
                                ? Constants.searchAlt
                                : Constants.search,
                            height: 25,
                            color:
                                currentIndex == 1 ? Colors.white : Colors.grey,
                          ),
                          const SizedBox(height: 14),
                          Text(
                            'Search',
                            style: TextStyle(
                              color: currentIndex == 1
                                  ? Colors.white
                                  : Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          currentIndex = 2;
                        });
                      },
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SvgPicture.asset(
                            Constants.library,
                            height: 25,
                            color:
                                currentIndex == 2 ? Colors.white : Colors.grey,
                          ),
                          const SizedBox(height: 14),
                          Text(
                            'Profile',
                            style: TextStyle(
                              color: currentIndex == 2
                                  ? Colors.white
                                  : Colors.grey,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
