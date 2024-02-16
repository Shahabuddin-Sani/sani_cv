import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/employment.dart';

final List<Employment> employments = [
  Employment(
      employeerName: "Shurjomukhi Limited",
      employeerLogo: "assets/photos/shurjo.png",
      employeerDuration: "SEP 2021- FEB 2023",
      employeerPosition: "Mobile Application Developer",
      employeerEmail: "https://shurjomukhi.com.bd/",
      employeeResponsibility:
          "At Shurjomukhi Limited, my main job was to make sure the payment gateway worked smoothly for our clients. This involved taking care of Flutter, Android, IOS and React Native sdks that handled payments, making sure it fit well with our clients' systems and worked properly"),
  Employment(
      employeerName: "Save the Children",
      employeerLogo: "assets/photos/save.png",
      employeerDuration: "Nov 2021-DEC 2022",
      employeerEmail: "https://bangladesh.savethechildren.net/",
      employeerPosition: "Mobile Application Developer",
      employeeResponsibility:
          "At Save the Children, I was tasked with creating an educational platform tailored for new parents. This platform included a helpful chatbot powered by a special language understanding and information extracing tool (NLP) that I developed using Python. Once the app was up and running, I joined the research and development team, where I was assigned to work on CI/CD, as well as working on code generation techniques to enhance our software development practices."),
  Employment(
      employeerName: "RedOrange",
      employeerLogo: "assets/photos/redorange.png",
      employeerDuration: "Mar 2021-Aug 2021",
      employeerEmail: "https://redorangecom.com/",
      employeerPosition: "Mobile Application Developer",
      employeeResponsibility:
          "At RedOrange, I was contactually hired to create an educatonal platform aimed at certifying garment workers in safety and disease prevention practices."),
  Employment(
      employeerName: "DEKKO Legacy Group",
      employeerLogo: "assets/photos/dekko.png",
      employeerDuration: "AUG 2019 - DEC 2020",
      employeerPosition: "Software Engineer",
      employeerEmail: "https://www.dekkolegacy.com/",
      employeeResponsibility: ""),
  Employment(
      employeerName: "Riseup Labs",
      employeerLogo: "assets/photos/rise.png",
      employeerDuration: "APR 2019 - JUL 2019",
      employeerPosition: "Android Developer",
      employeerEmail: "https://riseuplabs.com/",
      employeeResponsibility: ""),
  Employment(
      employeerName: "Captain Publishers",
      employeerLogo: "assets/photos/captain.png",
      employeerDuration: "JAN 2019 - MAR 2019",
      employeerPosition: "Android Developer",
      employeerEmail: "",
      employeeResponsibility: ""),
  Employment(
      employeerName: "Yoda",
      employeerLogo: "assets/photos/yoda.jpeg",
      employeerDuration: "JUL 2018 - NOV 2018",
      employeerPosition: "Android Developer",
      employeerEmail: "",
      employeeResponsibility: ""),
  Employment(
      employeerName: "EndingScene",
      employeerLogo: "assets/photos/endingscene.png",
      employeerDuration: "FEB 2018 - MAY 2018",
      employeerPosition: "Project Manager",
      employeerEmail: "",
      employeeResponsibility: ""),
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
                                      fontWeight: FontWeight.normal),
                                ),
                                Text(
                                  "(Fintech)",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 12,
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
                    color: AppTheme.c!.textSub2,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 0.0),
                  child: ClipRRect(
                    child: Container(
                      color: AppTheme.c!.textSub2,
                      width: 3,
                      height: i == employments.length - 1
                          ? 30
                          : i == 1
                              ? 367
                              : 300,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ClipRRect(
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
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
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
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 8.0),
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
                    SizedBox(
                      height: 16,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Container(
                        decoration: BoxDecoration(
                          color: AppTheme.c!.textSub2,
                        ),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Image.asset(
                                'assets/photos/background.jpg',
                                repeat: ImageRepeat.repeat,
                                fit: BoxFit.contain,
                                opacity: const AlwaysStoppedAnimation(.1),
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
                                      "Responsibility",
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8.0, top: 8.0, right: 8.0),
                                    child: Text(
                                      employments[i].employeeResponsibility,
                                      style: const TextStyle(
                                          fontSize: 12,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500),
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
}
