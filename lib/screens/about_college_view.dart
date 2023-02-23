import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_constants.dart';

class AboutCollege extends StatefulWidget {
  const AboutCollege({Key? key}) : super(key: key);

  @override
  State<AboutCollege> createState() => _AboutCollegeState();
}

class _AboutCollegeState extends State<AboutCollege> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 16),
              child: Text(
                "Description",
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Neque accumsan, scelerisque eget lectus ullamcorper a placerat. Porta cras at pretium varius purus cursus. Morbi justo commodo habitant morbi quis pharetra posuere mauris. Morbi sit risus, diam amet volutpat quis. Nisl pellentesque nec facilisis ultrices.",
              style: GoogleFonts.lato(
                  fontWeight: FontWeight.w700,
                  fontSize: 14,
                  color: const Color(0xff969797)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 16),
              child: Text(
                "Location",
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: SizedBox(
                height: 184,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/map_flutter.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25.0, bottom: 16),
              child: Text(
                "Student Review",
                style:
                    GoogleFonts.lato(fontWeight: FontWeight.w700, fontSize: 16),
              ),
            ),
            SizedBox(
              height: 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        "assets/review_4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        "assets/review_2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        "assets/review_3.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: Image.asset(
                        "assets/review_4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color(0xffE7E6E6),
                      height: 60,
                      width: 60,
                      child: Text(
                        "+12",
                        style: GoogleFonts.lato(
                            fontSize: 14,
                            fontWeight: FontWeight.w800,
                            color: primaryColor
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Card(
              elevation: 5,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Arun sai",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nec sed lorem nunc varius rutrum eget dolor, quis. Nulla sit magna suscipit tellus malesuada in facilisis a.",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Color(0xff8E8E8E)),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star_half,
                          color: Colors.amber,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
