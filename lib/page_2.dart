import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:home_rental_app/page_3.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State createState() => _HomePageState();
}

class _HomePageState extends State {
  List<String> imageList = [
    "assets/images/bunglow1.png",
    "assets/images/bunglow2.png",
    "assets/images/bunglow4.jpg",
  ];

  List<String> villaName = [
    "Night Hill Villa",
    "Night Villa",
    "CASA 18",
  ];

  List<String> location = [
    "London,Night Hill",
    "London,New Park",
    "London,Central Park",
  ];

  List<String> villaRent = ["\$5900", "\$4900", "\$4200"];

  List<double> ratings = [4.4, 4.0, 4.8];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(
          top: 65,
          left: 22,
          right: 22,
          bottom: 38,
        ),
        color: const Color.fromRGBO(101, 101, 101, 0.06),
        height: double.infinity,
        width: double.infinity,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Hey Dravid,",
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: const Color.fromRGBO(101, 101, 101, 1),
              ),
            ),
            Container(
              width: 48,
              height: 48,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
              ),
              child: Image.asset(
                'assets/images/profile.png',
                fit: BoxFit.cover,
              ),
            ),
          ]),
          const SizedBox(height: 22),
          SizedBox(
            width: 210,
            height: 60,
            child: Text(
              "Let’s find your best residence ",
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: const Color.fromRGBO(0, 0, 0, 1),
              ),
            ),
          ),
          const SizedBox(height: 22),
          const TextField(
            decoration: InputDecoration(
              isDense: true,
              contentPadding: EdgeInsets.all(12),
              filled: true,
              fillColor: Color.fromRGBO(255, 255, 255, 1),
              prefixIcon: Icon(Icons.search, size: 24),
              hintText: "Search your favourite paradise",
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(15)),
                borderSide: BorderSide(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Most popular",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              Text(
                "See All",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(32, 169, 247, 1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 14),
          Expanded(
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: imageList.length,
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(width: 20),
              itemBuilder: (BuildContext context, int index) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const DetailsPage()),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.all(11),
                  width: 211,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(alignment: AlignmentDirectional.topEnd, children: [
                        Container(
                          // padding: const EdgeInsets.all(5),
                          width: 189,
                          height: 196,
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.all(Radius.circular(15)),
                          ),
                          child: Image.asset(
                            imageList[index],
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 8, right: 8),
                          width: 45,
                          height: 21.75,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: Color.fromRGBO(82, 190, 253, 1),
                          ),
                          child: Row(
                            children: [
                              Image.asset(
                                'assets/images/star.png',
                                width: 15.94,
                                height: 15.94,
                              ),
                              Text(
                                "${ratings[index]}",
                                style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      const SizedBox(height: 6),
                      Text(
                        villaName[index],
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: const Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        location[index],
                        style: GoogleFonts.poppins(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: const Color.fromRGBO(72, 72, 72, 1),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          Text(
                            villaRent[index],
                            style: GoogleFonts.poppins(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: const Color.fromRGBO(32, 169, 247, 1),
                            ),
                          ),
                          Text(
                            " /Month",
                            style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(72, 72, 72, 1),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 19),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Nearby your location",
                style: GoogleFonts.poppins(
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: const Color.fromRGBO(0, 0, 0, 1),
                ),
              ),
              Text(
                "More",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: const Color.fromRGBO(32, 169, 247, 1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(9),
            width: 346,
            height: 108,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 1),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Row(
              children: [
                SizedBox(
                  width: 90,
                  height: 90,
                  child: Image.asset(
                    'assets/images/bunglow3.png',
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 12),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Jumeriah Golf Estates Villa",
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(0, 0, 0, 1),
                      ),
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Image.asset('assets/images/location.png'),
                        const SizedBox(width: 2),
                        Text(
                          "London,Area Plam Jumeriah",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 2),
                    Row(
                      children: [
                        Image.asset(
                          'assets/images/couch.png',
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "4 Bedrooms",
                          style: GoogleFonts.poppins(
                            fontSize: 9,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                        const SizedBox(width: 6),
                        Image.asset(
                          'assets/images/bath.png',
                          width: 15,
                          height: 15,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          "4 Bedrooms",
                          style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(90, 90, 90, 1),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        const SizedBox(width: 125),
                        Text(
                          "\$4500",
                          style: GoogleFonts.poppins(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: const Color.fromRGBO(32, 169, 247, 1),
                          ),
                        ),
                        Text(
                          " /Month",
                          style: GoogleFonts.poppins(
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(72, 72, 72, 1),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
