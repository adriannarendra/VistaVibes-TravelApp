import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class LocationDetailScreen extends StatelessWidget {
  const LocationDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.5,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        image: const DecorationImage(
                          image: AssetImage('assets/images/Hotel 1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              margin: const EdgeInsets.all(15),
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    blurRadius: 3,
                                    spreadRadius: 5,
                                  )
                                ],
                              ),
                              child: const Icon(
                                Icons.arrow_back,
                                color: Color(0xffb8b8b8),
                                size: 22,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: -20,
                      right: 20,
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              blurRadius: 3,
                              spreadRadius: 5,
                            ),
                          ],
                        ),
                        child: const Icon(
                          Icons.favorite,
                          size: 32,
                          color: Colors.redAccent,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Fairmont Banff',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 28,
                          color: const Color(0xff232323),
                        ),
                      ),
                      Text(
                        'View Map',
                        style: GoogleFonts.robotoCondensed(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: const Color.fromARGB(255, 23, 216, 94),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber),
                    const SizedBox(width: 5),
                    Text(
                      '4.5 (354 Reviews)',
                      style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: const Color(0xff606060),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Text(
                  'This iconic castle-like hotel offers luxurious accommodations and stunning views of the surrounding mountains. Guests can enjoy a full-service spa, golf courses, and fine dining options.',
                  style: GoogleFonts.robotoCondensed(
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                    color: const Color(0xff606060),
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  margin: const EdgeInsets.fromLTRB(0, 0, 0, 29),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Amenities',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: const Color(0xff232323),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _createFacilityCard(
                            assetPath: 'assets/vectors/vector_2_x2.svg',
                            label: '1 Heater',
                          ),
                          _createFacilityCard(
                            assetPath: 'assets/vectors/vector_1_x2.svg',
                            label: '1 Dinner',
                          ),
                          _createFacilityCard(
                            assetPath: 'assets/vectors/vector_x2.svg',
                            label: '1 Tub',
                          ),
                          _createFacilityCard(
                            assetPath: 'assets/vectors/vector_3_x2.svg',
                            label: 'Pool',
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: Container(
          height: 80,
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        'Price',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Color(0xff232323),
                        ),
                      ),
                    ),
                    Text(
                      '\$59.99',
                      style: GoogleFonts.montserrat(
                        fontWeight: FontWeight.w700,
                        fontSize: 24,
                        color: const Color(0xe2ff5252),
                      ),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  height: 60,
                  width: MediaQuery.of(context).size.width / 1.8,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color.fromARGB(255, 23, 216, 94),
                  ),
                  child: Center(
                    child: Text(
                      'Reserve Now',
                      style: GoogleFonts.robotoCondensed(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createFacilityCard({required String assetPath, required String label}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        padding: const EdgeInsets.fromLTRB(0, 14, 0, 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0x0d176ff2),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              width: 30,
              height: 28,
              child: SvgPicture.asset(assetPath),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 1.3),
              child: Text(
                label,
                style: GoogleFonts.robotoCondensed(
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                  color: Colors.black26,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
