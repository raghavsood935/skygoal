import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../app_constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar>
    with SingleTickerProviderStateMixin {
  late final TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: primaryColor,
      child: TabBar(
        padding: const EdgeInsets.all(10),
        indicatorColor: Colors.white,
        indicatorPadding: const EdgeInsets.only(left: 12.0, right: 12.0),
        indicatorWeight: 3,
        controller: tabController,
        tabs: [
          Tab(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.home,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "Search",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700, fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          Tab(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.bookmark,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "Bookmark",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700, fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          Tab(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.save_rounded,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "Saved",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700, fontSize: 10),
                  ),
                )
              ],
            ),
          ),
          Tab(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Icon(
                  Icons.account_box_rounded,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 5.0),
                  child: Text(
                    "Account",
                    style: GoogleFonts.lato(
                        fontWeight: FontWeight.w700, fontSize: 10),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
