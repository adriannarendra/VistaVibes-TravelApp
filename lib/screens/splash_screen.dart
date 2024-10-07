import 'package:aspen/screens/explore_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.fromLTRB(25, 93, 23, 48),
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage('assets/images/Splash.jpg'),
            fit: BoxFit.cover,
            opacity: 0.5,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.center,
              child: Text(
                'VistaVibes',
                style: GoogleFonts.getFont(
                  'Playball',
                  fontWeight: FontWeight.bold,
                  fontSize: 90,
                  color: Colors.white,
                ),
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Plan your next',
                            textAlign: TextAlign.left,
                            style: GoogleFonts.getFont(
                              'Montserrat',
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              color: Colors.white,
                              height: 1.3,
                            ),
                          ),
                        ),
                        Text(
                          'Nature Getaway',
                          style: GoogleFonts.getFont(
                            'Montserrat',
                            fontSize: 45,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                            height: 1.3,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExplorePage()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color.fromARGB(255, 23, 216, 94),
                    ),
                    child: Center(
                      child: Text(
                        'Explore',
                        style: GoogleFonts.getFont(
                          'Roboto Condensed',
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
