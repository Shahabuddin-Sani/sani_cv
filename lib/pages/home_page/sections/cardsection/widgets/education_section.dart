import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/education.dart';

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
      child: _buildUi(),
    );
  }

  Widget _buildUi() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              AppTheme.c!.textSub2!,
              AppTheme.c!.textSub2!,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/photos/background.jpg',
                repeat: ImageRepeat.repeat,
                opacity: const AlwaysStoppedAnimation(.1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
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
                                Text(
                                  education.period,
                                  style: GoogleFonts.oswald(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 20.0,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  education.description,
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  style: TextStyle(
                                    color: Colors.white,
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
    );
  }
}
