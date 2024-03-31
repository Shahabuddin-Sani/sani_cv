import 'dart:ui';

import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/employee_time_line.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/employment.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/projects.dart';

class EmploymentTimeLineMobile extends StatelessWidget {
  EmploymentTimeLineMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      padding: EdgeInsets.symmetric(horizontal: 0, vertical: 8),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: getEmploymentTile(),
        ),
      ),
    );
  }

  List<Widget> getEmploymentTile() {
    List<Widget> resultList = [
      Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 4.0),
          child: Text(
            "Work Experience",
            style: GoogleFonts.robotoSlab(
              color: AppTheme.c!.text,
              fontWeight: FontWeight.w900,
              fontSize: 30.0,
            ),
          ),
        ),
      ),
      SizedBox(
        height: 8,
      )
    ];
    for (var i = 0; i < employments.length; i++) {
      resultList.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
                                              style:
                                                  GoogleFonts.robotoCondensed(
                                                      fontSize: 13,
                                                      color: AppTheme.c!.text,
                                                      fontWeight:
                                                          FontWeight.w400),
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
                                                  alignment:
                                                      WrapAlignment.center,
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
                                                  style: GoogleFonts
                                                      .robotoCondensed(
                                                          fontSize: 13,
                                                          color:
                                                              AppTheme.c!.text,
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
                                                TableCellVerticalAlignment
                                                    .middle,
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
                                                    cursor: SystemMouseCursors
                                                        .click,
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
                                                  padding: const EdgeInsets.all(
                                                      16.0),
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
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: ClipRRect(
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
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
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
