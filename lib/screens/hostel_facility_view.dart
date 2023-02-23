import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_constants.dart';

class HostelFacility extends StatefulWidget {
  const HostelFacility({Key? key}) : super(key: key);

  @override
  State<HostelFacility> createState() => _HostelFacilityState();
}

class _HostelFacilityState extends State<HostelFacility> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, bottom: 12,left: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              const Spacer(),
              Padding(
                padding:  EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(8)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, top: 4, bottom: 4),
                    child: Row(
                      children: [
                        Image.asset("assets/bed_white.png"),
                        SizedBox(
                          width: 7,
                        ),
                        const Text(
                          "4",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: primaryColor,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, top: 4, bottom: 4),
                    child: Row(
                      children: [
                        Image.asset("assets/bed_blue.png"),
                        SizedBox(
                          width: 7,
                        ),
                        const Text(
                          "3",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: primaryColor,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, top: 4, bottom: 4),
                    child: Row(
                      children: [
                        Image.asset("assets/bed_blue.png"),
                        SizedBox(
                          width: 7,
                        ),
                        const Text(
                          "2",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(
                      color: primaryColor,
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 12.0, right: 12, top: 4, bottom: 4),
                    child: Row(
                      children: [
                        Image.asset("assets/bed_blue.png"),
                        SizedBox(
                          width: 7,
                        ),
                        const Text(
                          "1",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Spacer(),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 140,
            child: ListView(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 137,
                      width: 160,
                      child: Image.asset(
                        "assets/hostel_1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 137,
                      width: 160,
                      child: Image.asset(
                        "assets/hostel_2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 137,
                      width: 160,
                      child: Image.asset(
                        "assets/hostel_3.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "GHJK Engineering Hostel",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700, fontSize: 16),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff27C200),
                      borderRadius: BorderRadius.circular(6)),
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 8.0, right: 8, top: 4, bottom: 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("4.3",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w800,
                                fontSize: 13,
                                color: Colors.white)),
                        const SizedBox(
                          width: 2,
                        ),
                        const Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Row(
            children: [
               Icon(
                Icons.location_on_outlined,
                color: primaryColor,
              ),
              const SizedBox(
                width: 5,
              ),
              Text(
                "Lorem ipsum dolor sit amet, consectetur",
                style: GoogleFonts.lato(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4A4A4A)),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.,",
              style: GoogleFonts.lato(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff969797)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Facilities",
            style: GoogleFonts.lato(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, bottom: 8),
            child: Row(
              children: [
                SizedBox(
                  height: 30,
                  width: 30,
                  child: Image.asset(
                    "assets/university.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "College in 400mtrs",
                  style: GoogleFonts.lato(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff4A4A4A)),
                ),
              ],
            ),
          ),
          Row(
            children: [
              SizedBox(
                height: 30,
                width: 30,
                child: Image.asset(
                  "assets/bath.png",
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                "Bathrooms : 2",
                style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff4A4A4A)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
