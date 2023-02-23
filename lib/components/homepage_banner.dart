import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget homePageBanner(
    title,
    desc,
    imgPath,
    number,
    name,
    ) {
  return Stack(
      children: [
        SizedBox(
          height: 158,
          child: Image.asset(
            imgPath,
            fit: BoxFit.fill,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 19.0, left: 21, bottom: 30,right: 55),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.lato(
                    fontSize: 20,
                    fontWeight: FontWeight.w800,
                    color: Colors.white),
              ),
             Text(
                  desc,
                  style: TextStyle(
                    fontFamily: GoogleFonts.lato().fontFamily,
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                      color: Colors.white,
                      height: 1.5
                  ),
                ),
            ],
          ),
        ),
        Positioned(
          bottom: 12,
          right: 0,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                number,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                    color: Colors.black),
              ),
              const SizedBox(
                width: 2,
              ),
              Text(
                name,
                style: GoogleFonts.lato(
                    fontWeight: FontWeight.w700,
                    fontSize: 10,
                    color: const Color(0xff848484)),
              ),
            ],
          ),
        ),
      ],

  );
}
