import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/employment.dart';
import 'package:timeline_tile/timeline_tile.dart';

final List<Employment> employments = [
  Employment(
      employeerName: "Shurjomukhi Limited",
      employeerLogo: "assets/photos/shurjo.png",
      employeerDuration: "SEP 2021- FEB 2023",
      employeerPosition: "Mobile Application Developer",
      employeerEmail: "https://shurjomukhi.com.bd/",
      workProjects: [
        WorkProjects(
            projectName: "Pinoy Parent",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
      ]),
  Employment(
      employeerName: "Save the Children",
      employeerLogo: "assets/photos/save.png",
      employeerDuration: "Nov 2021-DEC 2022",
      employeerEmail: "https://bangladesh.savethechildren.net/",
      employeerPosition: "Mobile Application Developer",
      workProjects: [
        WorkProjects(
            projectName: "Pinoy Parent",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
      ]),
  Employment(
      employeerName: "RedOrange",
      employeerLogo: "assets/photos/redorange.png",
      employeerDuration: "Mar 2021-Aug 2021",
      employeerEmail: "https://redorangecom.com/",
      employeerPosition: "Mobile Application Developer",
      workProjects: [
        WorkProjects(
            projectName: "Pinoy Parent",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
      ]),
  Employment(
      employeerName: "DEKKO Legacy Group",
      employeerLogo: "assets/photos/dekko.png",
      employeerDuration: "AUG 2019 - DEC 2020",
      employeerPosition: "Software Engineer",
      employeerEmail: "https://www.dekkolegacy.com/",
      workProjects: [
        WorkProjects(
            projectName: "Pinoy Parent",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
      ]),
  Employment(
      employeerName: "Riseup Labs",
      employeerLogo: "assets/photos/rise.png",
      employeerDuration: "APR 2019 - JUL 2019",
      employeerPosition: "Android Developer",
      employeerEmail: "https://riseuplabs.com/",
      workProjects: [
        WorkProjects(
            projectName: "Pinoy Parent",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
      ]),
  Employment(
      employeerName: "Captain Publishers",
      employeerLogo: "assets/photos/captain.png",
      employeerDuration: "JAN 2019 - MAR 2019",
      employeerPosition: "Android Developer",
      employeerEmail: "",
      workProjects: [
        WorkProjects(
            projectName: "Pinoy Parent",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
      ]),
  Employment(
      employeerName: "Yoda",
      employeerLogo: "assets/photos/yoda.jpeg",
      employeerDuration: "JUL 2018 - NOV 2018",
      employeerPosition: "Android Developer",
      employeerEmail: "",
      workProjects: [
        WorkProjects(
            projectName: "Pinoy Parent",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
      ]),
  Employment(
      employeerName: "EndingScene",
      employeerLogo: "assets/photos/endingscene.png",
      employeerDuration: "FEB 2018 - MAY 2018",
      employeerPosition: "Project Manager",
      employeerEmail: "",
      workProjects: [
        WorkProjects(
            projectName: "Pinoy Parent",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
        WorkProjects(
            projectName: "",
            projectDetailsOrFeatures: "",
            numberOfCoworker: "",
            technologyUsed: ""),
      ]),
];

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
          style: GoogleFonts.oswald(
            color: AppTheme.c!.textSub2,
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
          children: [
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Container(
                          color: Colors.white,
                          width: double.infinity,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              employments[i].employeerDuration,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 12,
                                  color: const Color.fromARGB(255, 85, 85, 85),
                                  fontWeight: FontWeight.normal),
                            ),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 3.0),
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            width: double.infinity,
                            color: AppTheme.c!.primary,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Fintech",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.normal),
                              ),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
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
                            height: 90,
                            width: 90,
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
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: Text(
                                  employments[i].employeerPosition,
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {},
                                child: MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(
                                      employments[i].employeerEmail,
                                      style: TextStyle(
                                          fontSize: 10, color: Colors.blue),
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
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
    return resultList;
  }
}
