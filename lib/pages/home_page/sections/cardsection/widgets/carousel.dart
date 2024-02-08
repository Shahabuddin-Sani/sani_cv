import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/portfolio_stats.dart';
import 'dart:html' as html;

// ...

class Carousel extends StatefulWidget {
  @override
  State<Carousel> createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    double carouselContainerHeight = height;
    return Container(
      height: carouselContainerHeight,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/photos/sani.png",
                              height: 300,
                              width: 300,
                              fit: BoxFit.contain,
                            ).animate().scale(
                                begin: Offset(0, 0),
                                curve: Curves.fastOutSlowIn,
                                duration: 1500.ms),
                            Text(
                              "Shahabuddin Sani",
                              style: GoogleFonts.oswald(
                                color: AppTheme.c!.textSub2,
                                fontWeight: FontWeight.w900,
                                fontSize: 30.0,
                              ),
                            ),
                            Text(
                              "Software Engineer",
                              style: GoogleFonts.oswald(
                                color: AppTheme.c!.textSub2,
                                fontWeight: FontWeight.w400,
                                fontSize: 18.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(
                              height: 18.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "I Am a",
                                  style: GoogleFonts.oswald(
                                    color: AppTheme.c!.textSub2,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w900,
                                    height: 1.3,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "</>",
                                      style: GoogleFonts.oswald(
                                        color: AppTheme.c!.textSub2,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      ),
                                    ),
                                    DefaultTextStyle(
                                      style: GoogleFonts.oswald(
                                        color: AppTheme.c!.textSub2,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      ),
                                      child: AnimatedTextKit(
                                        isRepeatingAnimation: true,
                                        repeatForever: true,
                                        pause: Duration(seconds: 1),
                                        animatedTexts: [
                                          TypewriterAnimatedText('Android',
                                              speed: const Duration(
                                                  milliseconds: 200)),
                                          TypewriterAnimatedText('Flutter',
                                              speed: const Duration(
                                                  milliseconds: 200)),
                                          TypewriterAnimatedText('Unity',
                                              speed: const Duration(
                                                  milliseconds: 200)),
                                          TypewriterAnimatedText('Python',
                                              speed: const Duration(
                                                  milliseconds: 200)),
                                        ],
                                        onTap: () {
                                          print("Tap Event");
                                        },
                                      ),
                                    ),
                                    Text(
                                      "</>",
                                      style: GoogleFonts.oswald(
                                        color: AppTheme.c!.textSub2,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Developer",
                                  style: GoogleFonts.oswald(
                                    color: AppTheme.c!.textSub2,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w900,
                                    height: 1.3,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Text(
                              "Full-stack developer, based in Dhaka Bangladesh",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15.0,
                                height: 1.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            Container(
                              child: Wrap(
                                children: [
                                  Text(
                                    "Need a full custom website?",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 15.0,
                                      height: 1.5,
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Text(
                                        " Got a project? Let's talk.",
                                        style: TextStyle(
                                          height: 1.5,
                                          color: AppTheme.c!.textSub2,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            PortfolioStats(),
                            SizedBox(
                              height: 25.0,
                            ),
                            Row(
                              children: [
                                MouseRegion(
                                  cursor: SystemMouseCursors.click,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppTheme.c!.primary,
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    height: 48.0,
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 28.0,
                                    ),
                                    child: TextButton(
                                      onPressed: () {
                                        html.window.open(
                                            'https://stackoverflow.com/questions/ask',
                                            'new tab');
                                      },
                                      child: Text(
                                        "Download CV",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 13.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ).animate(
                                    onPlay: (controller) {
                                      controller.repeat();
                                    },
                                  ).shimmer(
                                      duration: 3400.ms,
                                      color: Colors.white.withOpacity(.25)),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(15),
                                      child: Container(
                                        color: AppTheme.c!.primary,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            "assets/photos/github.png",
                                            height: 35,
                                            width: 35,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(15),
                                      child: Container(
                                        color: AppTheme.c!.primary,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            "assets/photos/linkedin.png",
                                            height: 35,
                                            width: 35,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                GestureDetector(
                                  onTap: () {},
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: ClipRRect(
                                      borderRadius:
                                          BorderRadiusDirectional.circular(15),
                                      child: Container(
                                        color: AppTheme.c!.primary,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Image.asset(
                                            "assets/photos/artstation.png",
                                            height: 35,
                                            width: 35,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

// Big screens
 
// Mid screens
 