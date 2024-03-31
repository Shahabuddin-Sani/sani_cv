import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/education.dart';

import '../../../../../responsive/responsive.dart';

final List<Education> educationList = [
  Education(
    description: "Electrical and Electronics Engineering (EEE)",
    linkName: "",
    period: "BRAC University",
  ),
  Education(
    description: "O-levels & A-levels",
    linkName: "",
    period: "The Aga Khan School",
  ),
];

class EducationSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildUi(context),
    );
  }

  Widget _buildUi(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: AppTheme.c!.text!,
        border: Border.all(
          width: 3,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              style: BorderStyle.solid,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Stack(
            children: [
              Responsive.isMobile(context)
                  ? Container()
                  : Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Image.asset(
                          'assets/photos/education_icon.png',
                          color: Colors.white,
                          // opacity: const AlwaysStoppedAnimation(.1),
                        ),
                      ),
                    ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(
                      height: 5.0,
                    ),
                    SizedBox(
                      height: 4.0,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: educationList
                          .map(
                            (education) => Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 8.0,
                                  ),
                                  Text(
                                    education.period,
                                    style: GoogleFonts.robotoSlab(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Text(
                                    education.description,
                                    maxLines: 4,
                                    overflow: TextOverflow.ellipsis,
                                    style: GoogleFonts.robotoCondensed(
                                      color: Colors.white.withOpacity(0.75),
                                      height: 1.5,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {},
                                      child: Text(
                                        education.linkName,
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 4.0,
                                  )
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
