import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


import '../app_constants.dart';

import '../components/appbar_widget.dart';
import '../components/bottom_bar_widget.dart';
import '../components/homepage_banner.dart';
import 'college_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  String? highlighter;
  var headings = [
    "Top Colleges ",
    "Top Schools ",
    "Exams "
  ];
  var desc = [
    "Search through thousands of accredited colleges and universities online to find the right one for you.  Apply in 3 min, and connect with your future.",
    "Searching for the best school for you just got easier! With our Advanced School Search, you can easily filter out the schools that are fit for you.",
    "Find an end to end information about the exams that are happening in India",
  ];

  var imagePaths =[
    "assets/banner_1.png",
    "assets/banner_2.png",
    "assets/banner_3.png"
  ];

  var numbers = [
    "+126",
    "+106",
    "+16"
  ];

  var details = [
    "College",
    "Schools",
    "Exams"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
          preferredSize: Size.fromHeight(200),
          child: MyAppBar(),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 35,
            vertical: 20
          ),
          child: ListView.separated(
            itemCount: 3,
              separatorBuilder: (context,index){
              return SizedBox(
                height: 15,
              );
              },
              itemBuilder: (context,index){
                return
                  GestureDetector(
                    onTap: (){
                      showModalBottomSheet(
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30),
                          ),
                        ),
                        context: context,
                        builder: (context) {
                          return StatefulBuilder(
                            builder: (context, tapped) {
                              return SizedBox(
                                height: 350,
                                width: MediaQuery.of(context).size.width,
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 28.0, left: 38, right: 38),
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Sort by",
                                            style: GoogleFonts.lato(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 18),
                                          ),
                                          GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: const Icon(Icons.cancel))
                                        ],
                                      ),
                                      const Divider(
                                        color: Colors.grey,
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      bottomSheetOptions("Bachelor of Technology",
                                          "assets/education.png", tapped),
                                      bottomSheetOptions("Bachelor of Architecture",
                                          "assets/sketch.png", tapped),
                                      bottomSheetOptions("Pharmacy",
                                          "assets/pharmacy.png", tapped),
                                      bottomSheetOptions("Law",
                                          "assets/balance.png", tapped),
                                      bottomSheetOptions("Management",
                                          "assets/management.png", tapped),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                    child: homePageBanner(
                        headings[index],
                        desc[index],
                        imagePaths[index],
                        numbers[index],
                        details[index],
                    ),
                  );
              })
        ),
        bottomNavigationBar: BottomNavBar()
    );
  }

  Widget bottomSheetOptions(
      name,
      image,
      tapped
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        children: [
          Expanded(
            child: Row(
              children: [
                SizedBox(
                  height: 25,
                  width: 25,
                  child: Image.asset(
                    image,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                Text(
                  name,
                  style: GoogleFonts.lato(
                      fontWeight: FontWeight.w600, fontSize: 16),
                )
              ],
            ),
          ),
          Radio(
            activeColor: primaryColor,
            fillColor: MaterialStateProperty.all(primaryColor),
            visualDensity: const VisualDensity(
                horizontal: VisualDensity.minimumDensity,
                vertical: VisualDensity.minimumDensity),
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            value: name,
            groupValue: highlighter,
            onChanged: (value) {
              tapped(() {
                  setState(() {
                    highlighter = value.toString();
                  });
                  Timer(const Duration(milliseconds: 250), () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CollegesList(),
                      ),
                    );
                  });
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
