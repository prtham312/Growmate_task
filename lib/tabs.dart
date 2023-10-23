import 'package:easy_widgets/easy_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/percent_indicator.dart';

Widget firsttab() => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '215 Expert Opinion',
              style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff687684)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircularPercentIndicator(
                  radius: 45,
                  lineWidth: 13,
                  backgroundColor: const Color.fromARGB(255, 240, 125, 164),
                  fillColor: Colors.transparent,
                  center: const Text(
                    '12%',
                    style: TextStyle(fontSize: 25, color: Color(0xffE432C1)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    LinearPercentIndicator(
                      width: 110,
                      lineHeight: 12,
                      backgroundColor: const Color.fromARGB(255, 205, 204, 204),
                      progressColor: const Color.fromARGB(255, 246, 96, 216),
                      percent: 0.32,
                      barRadius: const Radius.circular(10),
                      trailing: const Text(
                        '12% Buy Yes',
                        style: TextStyle(
                            color: Color(0xffE432C1),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    LinearPercentIndicator(
                      width: 110,
                      lineHeight: 12,
                      backgroundColor: const Color.fromARGB(255, 205, 204, 204),
                      progressColor: const Color.fromARGB(255, 89, 86, 88),
                      percent: 0.88,
                      barRadius: const Radius.circular(10),
                      trailing: const Text(
                        '88% Buy No',
                        style: TextStyle(
                            color: Color(0xffE432C1),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    LinearPercentIndicator(
                      width: 110,
                      lineHeight: 12,
                      backgroundColor: const Color.fromARGB(255, 205, 204, 204),
                      progressColor: const Color.fromARGB(255, 89, 86, 88),
                      percent: 0.32,
                      barRadius: const Radius.circular(10),
                      trailing: const Text(
                        '1% No Resolve',
                        style: TextStyle(
                            color: Color.fromARGB(255, 89, 86, 88),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ],
                )
              ],
            ),
            20.hGap,
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ]),
                    height: 190.hWise,
                    width: 300.wWise,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'The Hill',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                '1 Sept',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          8.hGap,
                          const Text(
                            "Last week, the dire warnings that \nappeared in the Wall Street Journal, \nThe Economist and Foreign Affairs about \nChina's imminent war with or...",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SvgPicture.asset('assets/svg/arrow.svg'),
                          )
                        ],
                      ),
                    ),
                  ),
                  10.wGap,
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(0.0, 1.0), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ]),
                    height: 190.hWise,
                    width: 300.wWise,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Column(
                        children: [
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'BBC',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black),
                              ),
                              Text(
                                '8 Sept',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              ),
                            ],
                          ),
                          8.hGap,
                          const Text(
                            "Most people the BBC spoke to do not\n believe China is about to attack Taiwan.\n 'They're a bunch of gangsters,'\n said one man fishing on the...",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          Align(
                            alignment: Alignment.bottomRight,
                            child: SvgPicture.asset('assets/svg/arrow.svg'),
                          )
                        ],
                      ),
                    ),
                  ),
                ]),
              ),
            )
          ],
        ),
      ),
    );

Widget secondtab(BuildContext context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return infocard();
              },
            ),
          );
        },
        child: Column(
          children: [
            Row(
              children: [
                const Icon(Icons.person_2_outlined),
                const Text(
                  '215',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                30.wGap,
                const Icon(Icons.messenger_outline),
                const Text(
                  '95K',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                )
              ],
            ),
            20.hGap,
            Row(
              children: [
                ClipOval(
                    child: Image.asset(
                  'assets/images/person1.jpeg',
                  fit: BoxFit.cover,
                  width: 50.0,
                  height: 50.0,
                )),
                10.wGap,
                const Text(
                  'If China does indeed attack Taiwan soon, \nOctober is the likely time since the... more ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            20.hGap,
            Row(
              children: [
                ClipOval(
                    child: Image.asset(
                  'assets/images/person2.jpeg',
                  fit: BoxFit.cover,
                  width: 50.0,
                  height: 50.0,
                )),
                10.wGap,
                const Text(
                  'I will be surprised if #China will in fact \nattack Taiwan. Doing so requires lots \nof... more ',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                )
              ],
            ),
            20.hGap,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 50.hWise,
                  width: 300.wWise,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: 'Add a comment...',
                        border: OutlineInputBorder()),
                  ),
                ),
                const Text(
                  '😍 😭',
                  style: TextStyle(fontSize: 16),
                ),
                const Icon(Icons.add_box_outlined),
              ],
            ),
          ],
        ),
      ),
    );

Widget infocard() => SizedBox(
      child: Card(
        elevation: 3,
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.hGap,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Reactions',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 147, 146, 146),
                    ),
                  ),
                  Icon(Icons.close_outlined)
                ],
              ),
              20.hGap,
              Row(
                children: [
                  Container(
                    height: 35.hWise,
                    width: 70.wWise,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Top',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  25.wGap,
                  Container(
                    height: 35.hWise,
                    width: 70.wWise,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 154, 154, 154),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Newest',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              20.hGap,
              Container(
                height: 40.hWise,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 220, 219, 219),
                ),
                child: Row(children: [
                  RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text:
                              'Remember to keep comments respectful and to follow \n our ',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        TextSpan(
                          text: 'Community Guidelines',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                  )
                ]),
              ),
              20.hGap,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ClipOval(
                      child: Image.asset(
                    'assets/images/person2.jpeg',
                    fit: BoxFit.cover,
                    width: 50.0,
                    height: 50.0,
                  )),
                  10.wGap,
                  SizedBox(
                    height: 50.hWise,
                    width: 250.wWise,
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: 'Add a comment',
                          border: OutlineInputBorder()),
                    ),
                  ),
                  5.wGap,
                  const Icon(Icons.add_circle_outline)
                ],
              ),
              10.hGap,
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ClipOval(
                            child: Image.asset(
                          'assets/images/person1.jpeg',
                          fit: BoxFit.cover,
                          width: 50.0,
                          height: 50.0,
                        )),
                      ),
                      8.wGap,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Prof.alison 1h ago',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          10.wGap,
                          const Text(
                            "If China does indeed attack Taiwan soon,\n October is the likely time since the \nTaiwan Strait waters will be calm,\nfacilitating amphibious operations.\nThe drills around Taiwan allowed\nChina to build up forces in Fujian,\nwhich is part of what's needed\nbefore an invasion.",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  20.hGap,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: ClipOval(
                            child: Image.asset(
                          'assets/images/person2.jpeg',
                          fit: BoxFit.cover,
                          width: 50.0,
                          height: 50.0,
                        )),
                      ),
                      8.wGap,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'TomBN 3h ago',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          10.wGap,
                          const Text(
                            "I will be surprised if #China will in fact \nattack Taiwan.Doing so requires \nlots of courage, which \nChina lacks.",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );

Widget thirdtab(BuildContext context) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) {
                return videocard();
              },
            ),
          );
        },
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 0.1, color: Colors.white),
                  color: Colors.white),
              height: 80.hWise,
              width: 600.wWise,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Image.asset('assets/images/vid1.png'),
                  ),
                  30.wGap,
                  const Text(
                    "Liz Truss will be UK’s next\nPrime Minister?",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            20.hGap,
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(width: 0.1, color: Colors.white),
                  color: Colors.white),
              height: 80.hWise,
              width: 600.wWise,
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20)),
                    child: Image.asset('assets/images/vid2.png'),
                  ),
                  30.wGap,
                  const Text(
                    "British Pound will fall after\nPrime Minister elections?",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

Widget videocard() => SizedBox(
      child: Card(
        elevation: 3,
        shadowColor: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              50.hGap,
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Related',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 147, 146, 146),
                    ),
                  ),
                  Icon(Icons.close_outlined)
                ],
              ),
              20.hGap,
              Row(
                children: [
                  Container(
                    height: 35.hWise,
                    width: 70.wWise,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.black,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Top',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  25.wGap,
                  Container(
                    height: 35.hWise,
                    width: 70.wWise,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(255, 154, 154, 154),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(
                        'Newest',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              20.hGap,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 0.1, color: Colors.white),
                    color: Colors.white),
                height: 80.hWise,
                width: 600.wWise,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      child: Image.asset('assets/images/vid1.png'),
                    ),
                    30.wGap,
                    const Text(
                      "Liz Truss will be UK’s next\nPrime Minister?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              20.hGap,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 0.1, color: Colors.white),
                    color: Colors.white),
                height: 80.hWise,
                width: 600.wWise,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      child: Image.asset('assets/images/vid2.png'),
                    ),
                    30.wGap,
                    const Text(
                      "British Pound will fall after\nPrime Minister elections?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              20.hGap,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 0.1, color: Colors.white),
                    color: Colors.white),
                height: 80.hWise,
                width: 600.wWise,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      child: Image.asset('assets/images/vid3.png'),
                    ),
                    30.wGap,
                    const Text(
                      "British Railway Strikes will\nend by before Sept. 2022?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              20.hGap,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(width: 0.1, color: Colors.white),
                    color: Colors.white),
                height: 80.hWise,
                width: 600.wWise,
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20)),
                      child: Image.asset('assets/images/vid1.png'),
                    ),
                    30.wGap,
                    const Text(
                      "Liz Truss will be UK’s next\nPrime Minister?",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ),
              20.hGap,
            ],
          ),
        ),
      ),
    );
