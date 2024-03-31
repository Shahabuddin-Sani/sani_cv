import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_sequence_animator/image_sequence_animator.dart';
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
        padding: const EdgeInsets.only(top: 35.0),
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        child: Column(
                          children: [
                            Container(
                              height: 300,
                              // child: ImageSequenceAnimator(
                              //   "assets/animation", //folderName
                              //   "", //fileName
                              //   1, //suffixStart
                              //   4, //suffixCount
                              //   "png", //fileFormat
                              //   240, isLooping: true, isAutoPlay: true, fps: 24,
                              // ),
                            ),
                            // Image.asset(
                            //   "assets/photos/sani.png",
                            //   height: 300,
                            //   width: 300,
                            //   fit: BoxFit.contain,
                            // )
                            //     .animate(delay: 1100.ms)
                            //     .scale(
                            //         begin: Offset(0, 0),
                            //         curve: Curves.fastOutSlowIn,
                            //         duration: 2500.ms)
                            //     .then()
                            //     .shimmer(
                            //         duration: 3400.ms,
                            //         color: Colors.white.withOpacity(.25)),
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
                                  style: GoogleFonts.robotoSlab(
                                    color: AppTheme.c!.text,
                                    fontSize: 40.0,
                                    fontWeight: FontWeight.w900,
                                    height: 1.3,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "</>",
                                      style: GoogleFonts.robotoSlab(
                                        color: AppTheme.c!.text,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      ),
                                    ),
                                    DefaultTextStyle(
                                      style: GoogleFonts.robotoSlab(
                                        color: AppTheme.c!.text,
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
                                      style: GoogleFonts.robotoSlab(
                                        color: AppTheme.c!.text,
                                        fontSize: 40.0,
                                        fontWeight: FontWeight.w900,
                                        height: 1.3,
                                      ),
                                    ),
                                  ],
                                ),
                                Text(
                                  "Developer",
                                  style: GoogleFonts.robotoSlab(
                                    color: AppTheme.c!.text,
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
                              "As a Mobile Application Developer, I offer a diverse array of experiences to draw upon. My journey in development has taken me through various landscapes, spanning from the realms of animation and gaming to the impactful domains of non-governmental organizations (NGOs) and financial technology (Fintech)",
                              style: GoogleFonts.fredoka(
                                color: Colors.black,
                                fontSize: 16.0,
                              ),
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: PortfolioStats()),
                            SizedBox(
                              height: 25.0,
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(8)),
                                          border: Border.all(
                                            width: 3,
                                            color: Colors.white,
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              AppTheme.c!.primary!,
                                              Color(0xFFc7943e),
                                            ],
                                          ),
                                        ),
                                        height: 48.0,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 28.0,
                                        ),
                                        child: TextButton(
                                          onPressed: () {
                                            html.window.open(
                                                'https://drive.google.com/file/d/1IhUJJD7XoT7oVkfz_dNcx5rlWZ8agsd8/view?usp=sharing',
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
                                      )),
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      html.window.open(
                                          'https://github.com/Shahabuddin-Sani',
                                          'new tab');
                                    },
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          border: Border.all(
                                            width: 3,
                                            color: Colors.white,
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              AppTheme.c!.primary!,
                                              Color(0xFFc7943e),
                                            ],
                                          ),
                                        ),
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
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      html.window.open(
                                          'https://www.linkedin.com/in/shahabuddin-sani-7108a0204/s',
                                          'new tab');
                                    },
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          border: Border.all(
                                            width: 3,
                                            color: Colors.white,
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              AppTheme.c!.primary!,
                                              AppTheme.c!.primary!,
                                            ],
                                          ),
                                        ),
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
                                  SizedBox(
                                    width: 8.0,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      html.window.open(
                                          'https://www.artstation.com/artwork/w6KrwY',
                                          'new tab');
                                    },
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(15)),
                                          border: Border.all(
                                            width: 3,
                                            color: Colors.white,
                                          ),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                            colors: [
                                              AppTheme.c!.primary!,
                                              AppTheme.c!.primary!,
                                            ],
                                          ),
                                        ),
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
                                ],
                              ),
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
