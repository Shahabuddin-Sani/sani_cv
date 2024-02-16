import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrinsic_grid_view/intrinsic_grid_view.dart';
import 'package:sani_cv/animations/entrance_fader.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/carousel.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/education_section.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/employee_time_line.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/footer.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/portfolio_stats.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/projects_section.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/skill_section.dart';
import '../../../../configs/configs.dart';

class CardsectionDesktop extends StatefulWidget {
  const CardsectionDesktop({Key? key}) : super(key: key);

  @override
  State<CardsectionDesktop> createState() => _CardsectionDesktopState();
}

class _CardsectionDesktopState extends State<CardsectionDesktop> {
  late BuildContext context2;

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
      padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Carousel(),
            SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 1, child: EmploymentTimeLine()),
                Expanded(
                    flex: 1,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 65.0,
                        ),
                        EducationSection(),
                        SizedBox(
                          height: 10.0,
                        ),
                        SkillSection(),
                        SizedBox(
                          height: 40,
                        ),
                        Container(
                          child: Text(
                            "Work Activities & Projects",
                            textAlign: TextAlign.start,
                            style: GoogleFonts.oswald(
                              color: AppTheme.c!.textSub2,
                              fontWeight: FontWeight.w900,
                              fontSize: 30.0,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        ProjectSection(),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Footer(),
          ]),
    );
  }
}
