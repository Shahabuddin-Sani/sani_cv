import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_sequence_animator/image_sequence_animator.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/portfolio_stats.dart';
// import 'dart:html' as html;

// ...

class CarouselMobile extends StatefulWidget {
  @override
  State<CarouselMobile> createState() => _CarouselState();
}

class _CarouselState extends State<CarouselMobile> {
  final CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(top: 0.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    height: 440,
                    child: ImageSequenceAnimator(
                      "assets/animation", //folderName
                      "", //fileName
                      1, //suffixStart
                      4, //suffixCount
                      "png", //fileFormat
                      240, isLooping: true, isAutoPlay: true, fps: 24,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Column(
                      children: [
                        Text(
                          "Shahabuddin Sani",
                          style: GoogleFonts.robotoSlab(
                            color: AppTheme.c!.textSub2,
                            fontWeight: FontWeight.w900,
                            fontSize: 30.0,
                          ),
                        ),
                        Text(
                          "Software Engineer",
                          style: GoogleFonts.fredoka(
                            color: AppTheme.c!.textSub2,
                            fontWeight: FontWeight.w400,
                            fontSize: 18.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 18.0,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "I Am a",
                    style: GoogleFonts.robotoSlab(
                      color: AppTheme.c!.textSub2,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w900,
                      height: 1.3,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "</>",
                        style: GoogleFonts.robotoSlab(
                          color: AppTheme.c!.textSub2,
                          fontSize: 40.0,
                          fontWeight: FontWeight.w900,
                          height: 1.3,
                        ),
                      ),
                      DefaultTextStyle(
                        style: GoogleFonts.robotoSlab(
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
                                speed: const Duration(milliseconds: 200)),
                            TypewriterAnimatedText('Flutter',
                                speed: const Duration(milliseconds: 200)),
                            TypewriterAnimatedText('Unity',
                                speed: const Duration(milliseconds: 200)),
                            TypewriterAnimatedText('Python',
                                speed: const Duration(milliseconds: 200)),
                          ],
                          onTap: () {
                            print("Tap Event");
                          },
                        ),
                      ),
                      Text(
                        "</>",
                        style: GoogleFonts.robotoSlab(
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
                    style: GoogleFonts.robotoSlab(
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
                "As a Mobile Application Developer, I offer a diverse array of experiences to draw upon. My journey in development has taken me through various landscapes, spanning from the realms of animation and gaming to the impactful domains of non-governmental organizations (NGOs) and financial technology (Fintech)",
                textAlign: TextAlign.center,
                style: GoogleFonts.fredoka(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              SizedBox(
                height: 10.0,
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
                          // html.window.open(
                          //     'https://stackoverflow.com/questions/ask',
                          //     'new tab');
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
                        borderRadius: BorderRadiusDirectional.circular(15),
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
                        borderRadius: BorderRadiusDirectional.circular(15),
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
                        borderRadius: BorderRadiusDirectional.circular(15),
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
    );
  }
}

// Big screens

// Mid screens
