import 'package:flutter/material.dart';
import 'package:intrinsic_grid_view/intrinsic_grid_view.dart';
import 'package:sani_cv/animations/entrance_fader.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/projects.dart';

class ProjectSection extends StatelessWidget {
  int count = 0;
  ProjectSection({required this.count}) {}
  @override
  Widget build(BuildContext context) {
    List<Projects> features = fetchFeatureList(context);

    List<Widget> buildWidgets = [
      for (int i = 0; i < features.length; i++)
        _buildWidget(features[i], 350 + (50 * i)),
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(
          width: 3,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(15),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.c!.primary!,
            Color(0xFFc7943e),
          ],
        ),
      ),
      child: IntrinsicGridView.vertical(
          columnCount: count,
          padding: EdgeInsets.all(8),
          // rowCount: 1,
          verticalSpace: 8,
          horizontalSpace: 0,
          children: buildWidgets),
    );
  }

  List<Projects> fetchFeatureList(BuildContext context2) {
    return <Projects>[
      Projects(
          name: "Pinoy Parent APP",
          description:
              "•Developed and Deployed Pinoy Parent App on Android and IOS for Save the Children Philippines\n\n•App Features includes Multimedia Courses, An AI Chatbot reward system and blogs. ",
          client: "Save The Children Phillipines",
          clientLogo: "assets/photos/save.png",
          technology: "Flutter",
          features: "AI Chatbot, Multimedia Courses",
          links: "",
          noOfCollegues: "7",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png",
            "assets/photos/reative_native.png",
            "assets/photos/spring.png"
          ]),
      Projects(
          name: "Pinoy Parent AI",
          description:
              "•Developed an extraction NLP microservice using Docker and Flask that can reply to queries in multiple languages from LLM/Web/Local Repositories.\n\n•The AI is capable of Sentiment Analysis, Text Summarization and end to end Translation. ",
          client: "Save The Children Phillipines",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "2",
          links: "",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Save The Children RND\n(CI/CD)",
          description:
              "•Integrated Bitbucket pipeline, Jira and Fastlane for continuous integration and deployment of Pinoy Parent App to Playstore and Appstore.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "1",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Save The Children RND\n(Code Generation)",
          description:
              "•Learned to make a starter template out of any project written in any programming language.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "1",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Stitch App",
          description:
              "•The project aims to ensure a respectable work environment for workers in the ready-made garment (RMG) sector by integrating Sexual and Reproductive Health (SRH) information and services. The STITCH project takes a comprehensive approach to co-design and deliver tailor-made information and training to future RMG workers and health care providers.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "2",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Adolescent Club\n(UNICEF) App",
          description:
              "•Developed an app for the Adolescent Clubs(UNICEF) present throughout the country. It features a multilingual app with Digital Books/Surveys/Polling Data/MCQ Tests/Chat and Emergency Regional Contacts.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "2",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "DEKKO Legacy Group",
          description:
              "•An office maintenance app, with features like Contacts, Attendance, Job Card, Leave Application, and other Dekko employee Information which are accessible depending on different user privileges.\n•A module for Office Canteen meal management which featured meal planning and QR code based Meal confirmation. It also has a billing section.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "DEKKO SMS Gateway\nMicroservice",
          description:
              "•Checks and decodes thousands of SMS sent everyday by the SPOs and stores them on the server periodically without any interactions. It also instantly sends confirmation SMS along with any possible errors on the received SMS.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Dekko Foods",
          description:
              "•An Inventory and order Management System for sales persons and regional officers working with Dekko Foods.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          links: "",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "DEKKO \nCENSUS App",
          description:
              "•A survey app designed to collect data of DEKKO’s retail outlets. Collects sales/location/market competition data for DEKKO FOODS.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          links: "",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Hongbao \nRestaurant App",
          description:
              "•An app that analyzes and reports real time sales data from POS machines. Reports include Top Selling SKUs, Most Selling by Volume, Total Sales, Total Vat, Gross & Net Profit which can be sorted in hourly, weekly or monthly intervals.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Yoda \nDigital WhiteBoard",
          description:
              "•Developed a white board using web sockets where teachers can communicate with student real time on a canvas.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          links: "",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "TreeHouse \nResturant App",
          description: " •Developed an app for Treehouse Restaurant.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Captain Publishers\nDonation App ",
          description:
              "•Sales and Donation tracking app. Features included location tracking, display assigned meetings, and store feedback.",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          links: "",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
    ];
  }

  Widget _buildWidget(Projects feature, int duration) {
    double radius = 5.0;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(radius))),
          shadowColor: AppTheme.c!.background!,
          child: Container(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          " ${feature.name}",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Description:",
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Expanded(
                          child: Container(
                            width: double.infinity,
                            child: Text(
                              "${feature.description}",
                              textAlign: TextAlign.left,
                              maxLines: 100,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 11,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Client:",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "${feature.client}",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Team Size:",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "${feature.noOfCollegues}",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Tech Stack:",
                        textAlign: TextAlign.center,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontSize: 11, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Row(
                        children: getPlatform(feature.platformLogos),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppTheme.c!.textSub2,
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        height: 40.0,
                        padding: EdgeInsets.symmetric(
                          horizontal: 28.0,
                        ),
                        child: Center(
                          child: Text(
                            "View",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 13.0,
                              fontWeight: FontWeight.normal,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )),
    ) // runs after the above w/new duration
        ; // inherits the delay & duration from move;
  }

  List<Widget> getPlatform(List<String> platformLogos) {
    List<Widget> result = [];
    for (int i = 0; i < platformLogos.length; i++) {
      if (platformLogos[i].length > 0) {
        result.add(Padding(
          padding: const EdgeInsets.all(2.0),
          child: Image.asset(
            platformLogos[i],
            height: 25,
            width: 25,
            fit: BoxFit.contain,
          ),
        ));
      }
    }
    return result;
  }
}
