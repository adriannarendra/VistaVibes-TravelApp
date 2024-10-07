import 'package:aspen/widgets/popular_item.dart';
import 'package:aspen/widgets/recommended_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  _ExplorePageState createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color.fromARGB(255, 23, 216, 94),
          currentIndex: 0,
          unselectedItemColor: Colors.black38,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: '',
            ),
          ],
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Explore',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        'VistaVibes',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w500,
                          fontSize: 32,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        CupertinoIcons.location_solid,
                        color: Color.fromARGB(255, 23, 216, 94),
                        size: 20,
                      ),
                      const SizedBox(width: 6),
                      Text(
                        'Aspen, USA',
                        style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: const Color.fromARGB(255, 23, 216, 94),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: const Color(0xfff3f8fe),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Find places to visit',
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
            TabBar(
              controller: _controller,
              indicatorColor: const Color.fromARGB(255, 23, 216, 94),
              labelColor: const Color.fromARGB(255, 23, 216, 94),
              unselectedLabelColor: const Color(0xffb8b8b8),
              labelStyle: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.w700,
                fontSize: 16,
              ),
              unselectedLabelStyle: GoogleFonts.robotoCondensed(
                fontWeight: FontWeight.w400,
                fontSize: 16,
              ),
              tabs: const [
                Tab(text: 'Location'),
                Tab(text: 'Hotels'),
                Tab(text: 'Foods'),
                Tab(text: 'Adventures'),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: TabBarView(
                controller: _controller,
                children: [
                  _buildTabContent('Location'),
                  _buildTabContent('Hotels'),
                  _buildTabContent('Foods'),
                  _buildTabContent('Adventures'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String category) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Popular',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: const Color(0xff232323),
                  ),
                ),
                Text(
                  'See All',
                  style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color.fromARGB(255, 23, 216, 94),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PopularItem(
                    title: 'Hotel Jezero',
                    rating: '4.1',
                    image: 'assets/images/Hotel 2.jpg',
                  ),
                  SizedBox(width: 16),
                  PopularItem(
                    title: 'Fairmont Banff',
                    rating: '4.9',
                    image: 'assets/images/Hotel 1.jpg',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w600,
                    fontSize: 18,
                    color: const Color(0xff232323),
                  ),
                ),
                Text(
                  'See All',
                  style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: const Color.fromARGB(255, 23, 216, 94),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  RecommendedCard(
                    title: 'Lizard Island Resort',
                    duration: '5N/6D',
                    deal: 'Hot Deal',
                    image: 'assets/images/Hotel 3.jpg',
                  ),
                  SizedBox(width: 16),
                  RecommendedCard(
                    title: 'Grand Hotel Toplice',
                    duration: '1N/2D',
                    deal: 'New Deal',
                    image: 'assets/images/Hotel 4.jpg',
                  ),
                  SizedBox(width: 16),
                  RecommendedCard(
                    title: 'Lizard Island Resort',
                    duration: '5N/6D',
                    deal: 'Hot Deal',
                    image: 'assets/images/Hotel 3.jpg',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
