import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/carousel.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/carousel_mobile.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/education_section.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/employee_time_line%20mobile.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/employee_time_line.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/footer.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/projects_section.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/skill_section.dart';
import '../../../../configs/configs.dart';

class CardsectionMobile extends StatefulWidget {
  const CardsectionMobile({Key? key}) : super(key: key);

  @override
  State<CardsectionMobile> createState() => _CardsectionMobileState();
}

class _CardsectionMobileState extends State<CardsectionMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            AppTheme.c!.gradient1!,
            AppTheme.c!.gradient2!,
            AppTheme.c!.backgroundSub!,
          ],
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 4, vertical: 8),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselMobile(),
            SizedBox(
              height: 10.0,
            ),
            EmploymentTimeLineMobile(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SkillSection(),
                SizedBox(
                  height: 10.0,
                ),
                EducationSection(),
                SizedBox(
                  height: 10,
                ),
                getFeaturedApp(),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: Text(
                    "     Work Activities & Projects:",
                    textAlign: TextAlign.start,
                    style: GoogleFonts.oswald(
                      color: AppTheme.c!.text,
                      fontWeight: FontWeight.w900,
                      fontSize: 30.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                ProjectSection(
                  count: 1,
                ),
                SizedBox(
                  height: 40,
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
          ]),
    );
  }

  Widget getFeaturedApp() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.white.withOpacity(.8),
              Colors.white.withOpacity(.2),
            ],
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
          ),
          borderRadius: BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: 3,
            color: Colors.white,
          ),
        ),
        height: 400,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 8,
              ),
              Text(
                "Showcase/ Featured App ",
                style: GoogleFonts.robotoSlab(
                  color: Colors.black,
                  fontWeight: FontWeight.w900,
                  fontSize: 28.0,
                  height: 1.3,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "These are a set of demo Apps I designed to showcase my app building skills in different modern programming languages",
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontSize: 11,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Name:  ",
                            textAlign: TextAlign.start,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Cooking Genius",
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 12,
                            ),
                          ),
                        ],
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
                            Expanded(
                              child: Container(
                                width: double.infinity,
                                child: Text(
                                  "discription",
                                  textAlign: TextAlign.left,
                                  maxLines: 5,
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
                        height: 8,
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
                          Text(
                            "{feature.client}",
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
                            "Features:",
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                            ),
                          ),
                          Text(
                            "{feature.features}",
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
                            "Technology:",
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "{feature.technology}",
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
                          Text(
                            "{feature.noOfCollegues}",
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
                            "Platform:",
                            textAlign: TextAlign.center,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                                fontSize: 11, fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: getPlatform([
                              "assets/photos/flutter.png",
                              "assets/photos/android.png",
                              "assets/photos/ios.png"
                            ]),
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
                                "View Source code on GitHub",
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
              ),
            ],
          ),
        ),
      ),
    );
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
