import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/page_2.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: 412,
            height: 630,
            child: Image.asset(
              'assets/images/page1.png',
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 22),
          Text(
            "Lets find your Paradise",
            style: GoogleFonts.poppins(
              fontSize: 23,
              fontWeight: FontWeight.w600,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),
          ),
          const SizedBox(height: 12),
          SizedBox(
            width: 240,
            height: 46,
            child: Text(
              "Find your perfect dream space with just a few clicks",
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          const SizedBox(height: 13),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            child: Container(
              width: 200,
              height: 52,
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(32, 169, 247, 1),
                borderRadius: BorderRadius.all(Radius.circular(40)),
              ),
              child: Text(
                "Get Started",
                style: GoogleFonts.poppins(
                  fontSize: 21,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(255, 255, 255, 1),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
