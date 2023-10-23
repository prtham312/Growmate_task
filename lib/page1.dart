import 'package:easy_widgets/easy_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:internship_growmate/tabs.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        bottomNavigationBar: const GNav(
            gap: 8,
            backgroundColor: Colors.white54,
            color: Colors.black,
            activeColor: Colors.black,
            tabs: [
              GButton(
                icon: Icons.feed_outlined,
              ),
              GButton(
                icon: Icons.analytics_outlined,
              ),
              GButton(
                icon: Icons.pie_chart_outline_rounded,
              ),
              GButton(
                icon: Icons.person_3_rounded,
              ),
            ]),
        backgroundColor: const Color(0xffF8F8F8),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/img_growmate.jpg",
                    ),
                    Positioned.fill(
                        child: Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                          padding: const EdgeInsets.all(25),
                          child: SvgPicture.asset('assets/svg/arrow.svg')),
                    )),
                    const Positioned.fill(
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Will China invade Taiwan \n before the end of September?",
                                style: TextStyle(
                                  color: Color(0xffFFFFFF),
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Icon(
                                Icons.tune_sharp,
                                color: Colors.white,
                                size: 30,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 120,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 8, 84, 214),
                        Color.fromARGB(255, 211, 5, 170),
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                      bottomRight: Radius.circular(25),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'CHANCE',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              '  11%',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 37,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        const Align(
                          alignment: Alignment.bottomCenter,
                          child: Icon(
                            Icons.arrow_upward_rounded,
                            color: Color.fromARGB(255, 99, 233, 104),
                            size: 42,
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              '24H',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "+25495\$",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '\$09',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 70,
                              decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                'YES',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                              '\$89',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w600,
                                color: Colors.white,
                              ),
                            ),
                            Container(
                              height: 35,
                              width: 70,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 243, 37, 164),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Text(
                                'NO',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                const TabBar(
                  tabs: [
                    Tab(
                      text: "Research & News",
                    ),
                    Tab(
                      text: "Reactions",
                    ),
                    Tab(
                      text: "Related",
                    ),
                  ],
                ),
                SizedBox(
                  height: 400.hWise,
                  width: MediaQuery.of(context).size.width * 1,
                  // You can adjust the height as needed
                  child: TabBarView(
                    children: [
                      firsttab(),
                      secondtab(context),
                      thirdtab(context),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
