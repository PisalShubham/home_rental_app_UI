import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State createState() => __DetailsPageState();
}

class __DetailsPageState extends State {
  List<String> iconsList = [
    "assets/images/couch.png",
    "assets/images/bath.png",
    "assets/images/area.png",
  ];

  List<String> iconName = ["Bedrooms", "Bathrooms", "Square ft"];

  List<String> numbers = ["5", "6", "7,000 sq ft"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Details",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w600,
            color: const Color.fromRGBO(0, 0, 0, 1),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.keyboard_arrow_left_outlined,
            size: 35,
          ),
        ),
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(101, 101, 101, 0.06),
      ),
      body: Container(
        padding: const EdgeInsets.only(
          top: 25,
          left: 22,
          right: 22,
        ),
        color: const Color.fromRGBO(101, 101, 101, 0.06),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // scrollDirection: Axis.vertical,
          children: [
            Stack(
              children: [
                SizedBox(
                  width: 370,
                  height: 244,
                  child: Image.asset(
                    'assets/images/page3.png',
                    fit: BoxFit.fill,
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 14, left: 14),
                  alignment: Alignment.center,
                  width: 55.95,
                  height: 27.04,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(82, 190, 253, 1),
                  ),
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/star.png',
                        width: 24,
                        height: 24,
                      ),
                      Text(
                        "4.9",
                        style: GoogleFonts.poppins(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(255, 255, 255, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 23),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Night Hill Villa",
                      style: GoogleFonts.poppins(
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "London,Night Hill",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(72, 72, 72, 1),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: [
                    Text(
                      "\$5900",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(32, 169, 247, 1),
                      ),
                    ),
                    Text(
                      " /Month",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: const Color.fromRGBO(72, 72, 72, 1),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 18),
            Expanded(
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: iconsList.length,
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 14),
                itemBuilder: (BuildContext context, int index) => Container(
                  width: 112,
                  height: 141,
                  padding: const EdgeInsets.only(top: 26, left: 14),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        iconsList[index],
                        width: 32,
                        height: 32,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        iconName[index],
                        style: GoogleFonts.poppins(
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(90, 90, 90, 1),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        numbers[index],
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 18),
            SizedBox(
              width: 346,
              height: 225,
              child: Text(
                "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet. Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam consequat sunt nostrud amet",
                style: GoogleFonts.poppins(
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: const Color.fromRGBO(32, 169, 247, 1),
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))),
        label: Text(
          "Rent Now",
          style: GoogleFonts.poppins(
            fontSize: 22,
            fontWeight: FontWeight.w400,
            color: const Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
