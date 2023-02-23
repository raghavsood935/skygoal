import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_constants.dart';
import 'about_college_view.dart';
import 'hostel_facility_view.dart';

class CollegeDetails extends StatefulWidget {
  const CollegeDetails({Key? key}) : super(key: key);

  @override
  State<CollegeDetails> createState() => _CollegeDetailsState();
}

class _CollegeDetailsState extends State<CollegeDetails>
    with SingleTickerProviderStateMixin {
  late final TabController tabBarController;

  @override
  void initState() {
    tabBarController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            toolbarHeight: 35,
            elevation: 0,
            leadingWidth: 0,
            backgroundColor: primaryColor,
            automaticallyImplyLeading: false,
            expandedHeight: 487,
            flexibleSpace: FlexibleSpaceBar(
              titlePadding: EdgeInsets.zero,
              title: Material(
                color: const Color(0xffF8F8F8),
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  child: TabBar(
                    controller: tabBarController,
                    indicatorWeight: 3,
                    labelPadding: EdgeInsets.zero,
                    indicatorColor: primaryColor,
                    indicatorPadding:
                        const EdgeInsets.only(left: 12, right: 12),
                    tabs: [
                      SizedBox(
                        height: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "About College",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900,
                                fontSize: 8,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0,left: 5),
                          child: Text(
                            "Hostel Facility",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900,
                                fontSize: 8,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Q & A",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900,
                                fontSize: 8,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10.0),
                          child: Text(
                            "Events",
                            style: GoogleFonts.lato(
                                fontWeight: FontWeight.w900,
                                fontSize: 8,
                                color: Colors.black),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              background: SafeArea(
                child: Column(
                  children: [
                    Material(
                      color: primaryColor,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: ClipOval(
                                child: Container(
                                  height: 40,
                                  width: 40,
                                  color: Colors.white,
                                  child: const Center(
                                    child: Icon(
                                      Icons.arrow_back,
                                      color: Color(0xff0C55EC),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            ClipOval(
                              child: Container(
                                height: 40,
                                width: 40,
                                color: Colors.white,
                                child: const Center(
                                  child: Icon(
                                    Icons.bookmark_border,
                                    color: Color(0xff0C55EC),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      child: SizedBox(
                        height: 250,
                        width: MediaQuery.of(context).size.width,
                        child: Image.asset(
                          "assets/college_image.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Material(
                      color: Colors.white,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "GHJK Engineering college",
                                  style: GoogleFonts.lato(
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * 0.7,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Felis consectetur nulla pharetra praesent hendrerit vulputate viverra. Pellentesque aliquam tempus faucibus est.",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                        color: const Color(0xff8E8E8E)),
                                  ),
                                )
                              ],
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(6),
                                  color: const Color(0xff27C200)),
                              height: 70,
                              width: 50,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    "4.3",
                                    style: GoogleFonts.lato(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18,
                                        color: Colors.white),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: MediaQuery.of(context).size.height * 0.85,
              child: TabBarView(controller: tabBarController, children: [
                AboutCollege(),
                HostelFacility(),
                Center(
                    child: Text(
                      "Q & A",
                      style: GoogleFonts.lato(
                          fontWeight: FontWeight.w900,
                          fontSize: 30,
                          color: Colors.black),
                    )),
                Center(
                    child: Text(
                  "Events",
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w900,
                      fontSize: 30,
                      color: Colors.black),
                )),
              ]),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15, bottom: 15),
        child: SizedBox(
          height: 56,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15))),
            onPressed: () {},
            child: const Text("Apply Now"),
          ),
        ),
      ),
    );
  }
}
