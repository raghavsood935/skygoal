import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:core';
import 'package:google_fonts/google_fonts.dart';


import '../app_constants.dart';
import '../components/bottom_bar_widget.dart';
import '../components/college_card.dart';
import 'college_details.dart';

class CollegesList extends StatefulWidget {
  const CollegesList({Key? key}) : super(key: key);

  @override
  State<CollegesList> createState() => _CollegesListState();
}

class _CollegesListState extends State<CollegesList> {

  var collegeNames = [
    "GHJK Engineering College",
    "Bachelor Of Technology",
    "GHJK Engineering College"
  ];

  String description = "Lorem ipsum dolor sit amet, "
      "consectetur adipiscing elit. Eu ut imperdiet sed nec ullamcorper.";

  String rating = "4.3";
  String numbers = "468+";

  var imagePaths = [
    "assets/image_1.png",
    "assets/image_2.png",
    "assets/image_3.png"
  ];

  var highlights = [
    "More than 1000+ students have been placed",
    "Lorem ipsum dolor sit amet, consectetur adipiscing ",
    "More than 1000+ students have been placed"
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: Container(
          decoration: BoxDecoration(
            color: primaryColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30),
              bottomRight: Radius.circular(
                30,
              ),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(top: 3, bottom: 3),
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: const OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                ),
                                contentPadding: EdgeInsets.zero,
                                hintText: "Search for colleges, schools.....",
                                prefixIcon: const Icon(
                                  CupertinoIcons.search,
                                  color: Color(0xffD6D6D6),
                                  size: 20,
                                ),
                                hintStyle: GoogleFonts.lato(
                                  fontSize: 14,
                                  color: const Color(0xffD6D6D6),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: 55,
                      width: 55,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Icon(
                        CupertinoIcons.mic_solid,
                        color: primaryColor,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: 20,
                right: 20,
                top: 10
              ),
              child: Row(
                children: [
                  Container(
                          height: 30,
                          width: MediaQuery.of(context).size.width/2-26,
                          child: Center(
                            child: Text(
                                "MVSH Engineering College",
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: GoogleFonts.lato().fontFamily,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.grey.shade400
                              )
                          ),
                      ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 30,
                    width: MediaQuery.of(context).size.width/2-26,
                    child: Center(
                      child: Text(
                        "MVSH Engineering College",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: GoogleFonts.lato().fontFamily,
                        ),
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                        border: Border.all(
                            color: Colors.grey.shade400
                        )
                    ),
                  ),
                ],
              ),
            ),
             ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: (){
                      Navigator.push(
                          context,MaterialPageRoute(
                          builder: (context)=>const CollegeDetails()
                      )
                      );
                    },
                    child: collegeCard(
                        description: description,
                        rating: rating,
                        name: collegeNames[index],
                        imagePath: imagePaths[index],
                        highlight: highlights[index],
                        number: numbers
                    ),
                  );
                },
              ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
