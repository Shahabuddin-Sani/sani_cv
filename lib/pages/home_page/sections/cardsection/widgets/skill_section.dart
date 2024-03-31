import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/skill.dart';
import 'package:sani_cv/responsive/responsive.dart';

List<Skill> skills = [
  Skill(skill: "Flutter", percentage: 85, knowledgeList: [""]),
  Skill(skill: "Java", percentage: 80, knowledgeList: [""]),
  Skill(skill: "Kotlin", percentage: 70, knowledgeList: [""]),
  Skill(skill: "Python", percentage: 80, knowledgeList: [""]),
  Skill(skill: "SpringBoot", percentage: 60, knowledgeList: [""]),
  Skill(skill: "Flask", percentage: 50, knowledgeList: [""]),
  Skill(skill: "Unity", percentage: 70, knowledgeList: [""]),
  Skill(skill: "Blender", percentage: 70, knowledgeList: [""]),
  Skill(skill: "Docker", percentage: 70, knowledgeList: [""]),
];

List<Map<String, String>> skillCategory = [
  {"Programming languages": "Java, Kotlin, Dart, Python, C#."},
  {
    "Framework":
        "Android, Jetpack Compose, Dagger hilt, Flutter, Unity, Docker."
  },
  {"Backend": "Spring Boot, Flask."},
  {"Database": "Sql, Postgre, MongoDB, Sqlite, Room, Drift, Hive, Firebase."},
  {
    "Design Pattern & Architecture":
        "API Design and Testing, REST, Retrofit, SRP, MVC, MVVM, Bootstrap."
  },
  {"Project Management Framework": "SCRUM & Agile."},
  {"Graphics Software": "AdobeXD, Frigma, Photoshop, Illustrator, Blender."},
];

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildUi(context),
    );
  }

  Widget _buildUi(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.c!.primary!,
            Color(0xFFc7943e),
          ],
        ),
        border: Border.all(
          width: 3,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Skills",
                style: GoogleFonts.robotoSlab(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 28.0,
                  height: 1.3,
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 260,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: getSkillDetails(skillCategory)),
                  ),
                  Responsive.isMobile(context)
                      ? Container()
                      : Expanded(
                          child: Column(
                            children: skills
                                .map(
                                  (skill) => Container(
                                    margin: EdgeInsets.only(bottom: 15.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Expanded(
                                              flex: skill.percentage,
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                child: Container(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  height: 38.0,
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            8.0),
                                                    child: Text(
                                                      skill.skill,
                                                      style: GoogleFonts
                                                          .robotoSlab(),
                                                    ),
                                                  ),
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Expanded(
                                              // remaining (blank part)
                                              flex: 100 - skill.percentage,
                                              child: Divider(
                                                color: Colors.white,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            Text(
                                              "${skill.percentage}%",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 16.0,
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Widget> getSkillDetails(List<Map<String, String>> skillCategory) {
  List<Widget> tempWidget = [];

  for (var skillCategory in skillCategory) {
    tempWidget.add(Padding(
      padding: const EdgeInsets.only(bottom: 16.0, right: 16),
      child: Wrap(
        alignment: WrapAlignment.start,
        children: [
          Text(
            "• " + skillCategory.keys.first + ": ",
            style: GoogleFonts.robotoSlab(
                color: Colors.white, fontSize: 14, fontWeight: FontWeight.bold),
          ),
          Text(
            skillCategory.values.first,
            style: GoogleFonts.robotoCondensed(
                color: Colors.white.withOpacity(.8), fontSize: 13),
          )
        ],
      ),
    ));
  }
  return tempWidget;
}
