import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/skill.dart';

List<Skill> skills = [
  Skill(skill: "Flutter", percentage: 85, knowledgeList: [""]),
  Skill(skill: "Java", percentage: 80, knowledgeList: [""]),
  Skill(skill: "Kotlin", percentage: 70, knowledgeList: [""]),
  Skill(skill: "Python", percentage: 80, knowledgeList: [""]),
  Skill(skill: "SpringBoot", percentage: 60, knowledgeList: [""]),
  Skill(skill: "Flask", percentage: 50, knowledgeList: [""]),
  Skill(skill: "Docker", percentage: 70, knowledgeList: [""]),
  Skill(skill: "AdobeXD", percentage: 80, knowledgeList: [""]),
];

class SkillSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildUi(),
    );
  }

  Widget _buildUi() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        color: AppTheme.c!.primary,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "SKILLS",
                  style: GoogleFonts.oswald(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 28.0,
                    height: 1.3,
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Column(
                  children: skills
                      .map(
                        (skill) => Container(
                          margin: EdgeInsets.only(bottom: 15.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    flex: skill.percentage,
                                    child: Container(
                                      padding: EdgeInsets.only(left: 10.0),
                                      alignment: Alignment.centerLeft,
                                      height: 38.0,
                                      child: Text(skill.skill),
                                      color: Colors.white,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
