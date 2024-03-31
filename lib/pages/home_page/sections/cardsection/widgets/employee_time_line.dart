import 'dart:ui';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/employment.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/projects.dart';

final List<Employment> employments = [
  Employment(
      employeerName: "Shurjomukhi Limited",
      employeerLogo: "assets/photos/shurjo.png",
      employeerDuration: "SEP 2021- FEB 2023",
      employeerPosition: "Mobile Application Developer",
      employeerEmail: "https://shurjomukhi.com.bd/",
      employeeCompanyType: "Fintech",
      projects: [
        Projects(
            name: "name",
            description: "description",
            client: "client",
            clientLogo: "clientLogo",
            technology: "technology",
            features: "features",
            noOfCollegues: "noOfCollegues",
            links: "",
            platformLogos: [])
      ],
      platformLogos: [
        "assets/photos/android.png",
        "assets/photos/flutter.png",
        "assets/photos/spring.png",
        "assets/photos/reative_native.png"
      ],
      platformLogosText: ["Android", "Flutter", "Springboot", "React Native"],
      employeeResponsibility:
          "At Shurjomukhi Limited, my main job was to make sure the payment gateway worked smoothly for our clients. This involved taking care of Flutter, Android, IOS and React Native sdks that handled payments, making sure it fit well with our clients' systems and worked properly"),
  Employment(
      employeerName: "Save the Children",
      employeerLogo: "assets/photos/save.png",
      employeerDuration: "Nov 2021-DEC 2022",
      employeerEmail: "https://bangladesh.savethechildren.net/",
      employeerPosition: "Mobile Application Developer",
      employeeCompanyType: "NGO",
      projects: [
        Projects(
            name: "name",
            description: "description",
            client: "client",
            clientLogo: "clientLogo",
            technology: "technology",
            features: "features",
            noOfCollegues: "noOfCollegues",
            links: "",
            platformLogos: [])
      ],
      platformLogos: [
        "assets/photos/flutter.png",
        "assets/photos/android.png",
        "assets/photos/python.png",
        "assets/photos/ios.png"
      ],
      platformLogosText: ["Flutter", "Android", "Python", "IOS"],
      employeeResponsibility:
          "At Save the Children, I was tasked with creating an educational platform tailored for new parents. This platform included a helpful chatbot powered by a special language understanding and information extracing tool (NLP) that I developed using Python. Once the app was up and running, I joined the research and development team, where I was assigned to work on CI/CD, as well as working on code generation techniques to enhance our software development practices."),
  Employment(
      employeerName: "RedOrange",
      employeerLogo: "assets/photos/redorange.png",
      employeerDuration: "Mar 2021-Aug 2021",
      employeerEmail: "https://redorangecom.com/",
      employeerPosition: "Mobile Application Developer",
      employeeCompanyType: "Media & Com...",
      platformLogos: ["assets/photos/android.png"],
      platformLogosText: ["Android"],
      projects: [
        Projects(
            name: "name",
            description: "description",
            client: "client",
            clientLogo: "clientLogo",
            technology: "technology",
            features: "features",
            noOfCollegues: "noOfCollegues",
            links: "",
            platformLogos: [])
      ],
      employeeResponsibility:
          "At RedOrange, I was contactually hired to create an educatonal platform aimed at certifying garment workers in safety and disease prevention practices."),
  Employment(
      employeerName: "DEKKO Legacy Group",
      employeerLogo: "assets/photos/dekko.png",
      employeerDuration: "AUG 2019 - DEC 2020",
      employeerPosition: "Software Engineer",
      employeerEmail: "https://www.dekkolegacy.com/",
      employeeCompanyType: "Group of Industries",
      platformLogos: ["assets/photos/android.png", "assets/photos/flutter.png"],
      platformLogosText: ["Android", "Flutter"],
      projects: [
        Projects(
            name: "name",
            description: "description",
            client: "client",
            clientLogo: "clientLogo",
            technology: "technology",
            links: "",
            features: "features",
            noOfCollegues: "noOfCollegues",
            platformLogos: [])
      ],
      employeeResponsibility:
          "As a member of the Dekko Legacy Group, my role involved designing and developing various applications to streamline operations at Dekko Foods. I created IMS by SMS, enabling sales promotion officers to send encoded sales reports effortlessly. Additionally, I developed the DEKKO SMS Gateway Microservice for managing incoming SMS and detecting errors. I also contributed to the DEKKO Legacy App, offering features like Contacts, Attendance, Job Card, Leave Application, and Employee Information. "),
  Employment(
      employeerName: "Riseup Labs",
      employeerLogo: "assets/photos/rise.png",
      employeerDuration: "APR 2019 - JUL 2019",
      employeerPosition: "Android Developer",
      employeerEmail: "https://riseuplabs.com/",
      employeeCompanyType: "Gaming Studio",
      platformLogos: ["assets/photos/android.png"],
      platformLogosText: ["Android"],
      projects: [
        Projects(
            name: "name",
            description: "description",
            client: "client",
            clientLogo: "clientLogo",
            links: "",
            technology: "technology",
            features: "features",
            noOfCollegues: "noOfCollegues",
            platformLogos: [])
      ],
      employeeResponsibility:
          "As a member of RiseUpLabs, my focus was on developing an app for Adolescent Clubs under UNICEF's initiative. This app catered to clubs nationwide and included multilingual features such as Digital Books, Surveys, MCQ Tests, Chat, and Emergency Regional Contacts. In my role, I was responsible for developing the app in line with the client's design and specifications. Key features of the app included displaying poll data, providing access to digital textbooks, conducting MCQ tests, offering emergency contacts nearby, and facilitating group discussions. Through this project, I contributed to empowering adolescent clubs with digital tools for education and communication, aligning with UNICEF's mission."),
  Employment(
      employeerName: "Captain Publishers",
      employeerLogo: "assets/photos/captain.png",
      employeerDuration: "JAN 2019 - MAR 2019",
      employeerPosition: "Android Developer",
      employeerEmail: "",
      employeeCompanyType: "Publication House",
      platformLogos: ["assets/photos/android.png"],
      platformLogosText: ["Android"],
      projects: [
        Projects(
            name: "name",
            description: "description",
            client: "client",
            clientLogo: "clientLogo",
            technology: "technology",
            links: "",
            features: "features",
            noOfCollegues: "noOfCollegues",
            platformLogos: [])
      ],
      employeeResponsibility:
          "As part of Captain Publishers, my focus was on designing and developing a Sales and Donation tracking app. This application served as a pivotal tool for managing sales and donations effectively. In my role, I was responsible for both the design and development of the app, including the creation of the API and Database infrastructure. Key features of the app included location tracking, displaying assigned meetings, and storing feedback received from users. By incorporating these features, the app provided a comprehensive solution for tracking sales and donations, ultimately enhancing the efficiency of operations for Captain Publishers."),
  Employment(
      employeerName: "Yoda",
      employeerLogo: "assets/photos/yoda.jpeg",
      employeerDuration: "JUL 2018 - NOV 2018",
      employeerPosition: "Android Developer",
      employeerEmail: "",
      employeeCompanyType: "Educational Platform",
      platformLogos: ["assets/photos/android.png"],
      platformLogosText: ["Android"],
      projects: [
        Projects(
            name: "name",
            description: "description",
            client: "client",
            clientLogo: "clientLogo",
            technology: "technology",
            links: "",
            features: "features",
            noOfCollegues: "noOfCollegues",
            platformLogos: [])
      ],
      employeeResponsibility:
          "As a member of Yoda, I worked on the Yoda Digital ChalkBoard, a web-based real-time digital board utilized by tutors to communicate effectively with students. I contributed to the development of the TreeHouse Restaurant App, another innovative project by Yoda. This application served as a comprehensive solution for restaurant management, offering features such as menu browsing, cart functionality, QR Coupon usage, and the ability to request Uber rides directly to the restaurant."),
  Employment(
      employeerName: "EndingScene",
      employeerLogo: "assets/photos/endingscene.png",
      employeerDuration: "FEB 2018 - MAY 2018",
      employeerPosition: "Creative Head",
      employeerEmail: "",
      employeeCompanyType: "Animation Studio",
      platformLogos: ["assets/photos/android.png", "assets/photos/ios.png"],
      platformLogosText: ["Android", "Blender"],
      projects: [
        Projects(
            name: "name",
            description: "description",
            client: "client",
            clientLogo: "clientLogo",
            technology: "technology",
            links: "",
            features: "features",
            noOfCollegues: "noOfCollegues",
            platformLogos: [])
      ],
      employeeResponsibility:
          "As a key member of EndingScene, where I developed HelloIM. HelloIM App leverages the powerful capabilities of Mapbox to provide users with a seamless map-based experience."),
];
List<double> heights = [400, 480, 360, 500, 570, 560, 500, 30];

class EmploymentTimeLine extends StatelessWidget {
  EmploymentTimeLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: getEmploymentTile(),
          ),
        ),
      ),
    );
  }

  List<Widget> getEmploymentTile() {
    List<Widget> resultList = [
      Container(
        child: Text(
          "Work Experience",
          style: GoogleFonts.robotoSlab(
            color: AppTheme.c!.text,
            fontWeight: FontWeight.w900,
            fontSize: 30.0,
          ),
        ),
      ),
      SizedBox(
        height: 8,
      )
    ];
    for (var i = 0; i < employments.length; i++) {
      resultList.add(
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  employments[i].employeerDuration,
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: Color(0xFF555555),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "(${employments[i].employeeCompanyType})",
                                  textAlign: TextAlign.center,
                                  maxLines: 1,
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Color(0xFF555555),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: Container(
                    height: 3,
                    width: 20,
                    color: AppTheme.c!.text,
                  ),
                ),
                ClipRRect(
                  child: Container(
                    color: AppTheme.c!.text,
                    width: 3,
                    height: heights[i],
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 4,
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.c!.textSub2,
                  border: Border.all(
                    width: 3,
                    color: Colors.white,
                  ),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12)),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              right: 0,
                              bottom: 0,
                              child: Image.asset(
                                employments[i].employeerLogo,
                                height: 80,
                                width: 80,
                                fit: BoxFit.contain,
                                opacity: const AlwaysStoppedAnimation(1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 8.0, right: 8.0),
                                    child: Text(
                                      employments[i].employeerName,
                                      style: const TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      employments[i].employeerPosition,
                                      style: TextStyle(
                                          fontSize: 12,
                                          color: AppTheme.c!.text),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: double.infinity,
                      color: AppTheme.c!.primary!,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 0.0, right: 8.0),
                            child: Text(
                              "Job Responsibility",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.robotoSlab(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, top: 8.0, right: 8.0),
                            child: FlipCard(
                              flipOnTouch: true,

                              fill: Fill
                                  .fillBack, // Fill the back side of the card to make in the same size as the front.
                              direction: FlipDirection.HORIZONTAL, // default
                              side: CardSide
                                  .FRONT, // The side to initially display.
                              front: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: MouseRegion(
                                  cursor: MaterialStateMouseCursor.clickable,
                                  child: Container(
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Column(
                                        children: [
                                          Text(
                                            "\'\'" +
                                                employments[i]
                                                    .employeeResponsibility +
                                                "\'\'",
                                            textAlign: TextAlign.center,
                                            style: GoogleFonts.robotoCondensed(
                                                fontSize: 13,
                                                color: AppTheme.c!.text,
                                                fontWeight: FontWeight.w400),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            color: AppTheme.c!.text!,
                                            height: 1,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            child: Container(
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 32),
                                              width: double.infinity,
                                              child: Wrap(
                                                alignment: WrapAlignment.center,
                                                children: getPlatform(
                                                    employments[i]
                                                        .platformLogos,
                                                    employments[i]
                                                        .platformLogosText),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Container(
                                            width: double.infinity,
                                            color: AppTheme.c!.text!,
                                            height: 1,
                                          ),
                                          SizedBox(
                                            height: 8,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Know More",
                                                textAlign: TextAlign.center,
                                                style:
                                                    GoogleFonts.robotoCondensed(
                                                        fontSize: 13,
                                                        color: AppTheme.c!.text,
                                                        fontWeight:
                                                            FontWeight.w400),
                                              ),
                                              Icon(
                                                Icons.navigate_next_rounded,
                                                color: AppTheme.c!.text,
                                                size: 13,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              back: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(16.0),
                                    child: SingleChildScrollView(
                                      child: Column(children: <Widget>[
                                        Table(
                                          border: TableBorder.all(
                                            width: 2,
                                            color: AppTheme.c!.text!,
                                          ),
                                          defaultVerticalAlignment:
                                              TableCellVerticalAlignment.middle,
                                          children: [
                                            TableRow(children: [
                                              Center(child: Text("Projects")),
                                              Center(
                                                  child: Text(
                                                "Tech\nStack",
                                                textAlign: TextAlign.center,
                                              )),
                                            ]),
                                            TableRow(children: [
                                              Center(
                                                  child: Tooltip(
                                                textStyle: TextStyle(
                                                    color: Colors.white),
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    color: Color(0xFFc7943e)),
                                                message:
                                                    "Project Name is this (Team Size: 34)\n\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. ",
                                                padding: EdgeInsets.all(50),
                                                margin: EdgeInsets.symmetric(
                                                    horizontal: 50),
                                                preferBelow: false,
                                                child: MouseRegion(
                                                  cursor:
                                                      SystemMouseCursors.click,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            16.0),
                                                    child: Text(
                                                      "Pinoy Parent",
                                                      style: TextStyle(
                                                        height: 2,
                                                        color: Colors.blue,
                                                        decoration:
                                                            TextDecoration
                                                                .underline,
                                                        decorationColor: Colors
                                                            .blue, // optional
                                                        decorationThickness:
                                                            2, // optional
                                                        decorationStyle:
                                                            TextDecorationStyle
                                                                .double, // optional
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )),
                                              Center(
                                                  child: Padding(
                                                padding:
                                                    const EdgeInsets.all(16.0),
                                                child: Text("ABES EC"),
                                              )),
                                            ]),
                                          ],
                                        ),
                                      ]),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 4,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }
    return resultList;
  }

  List<Widget> getPlatform(
      List<String> platformLogos, List<String> platformLogosText) {
    List<Widget> result = [];
    for (int i = 0; i < platformLogos.length; i++) {
      if (platformLogos[i].length > 0) {
        result.add(Padding(
          padding: const EdgeInsets.all(2.0),
          child: Tooltip(
            textStyle: TextStyle(color: Colors.white),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Color(0xFFc7943e)),
            message: platformLogosText[i],
            padding: EdgeInsets.all(4),
            preferBelow: false,
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Container(
                decoration: BoxDecoration(
                  color: AppTheme.c!.background,
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(
                    width: 1,
                    color: AppTheme.c!.text!,
                    style: BorderStyle.solid,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset(
                    platformLogos[i],
                    height: 35,
                    width: 35,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
        ));
      }
    }
    return result;
  }
}
