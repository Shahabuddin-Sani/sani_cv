import 'dart:ui';

import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_sequence_animator/image_sequence_animator.dart';
import 'package:marquee/marquee.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import '../../../configs/app.dart';
import '../../../configs/configs.dart';
import '../../../constants.dart';
import '../../../provider/app_provider.dart';
import '../../../provider/drawer_provider.dart';
import '../../../provider/scroll_provider.dart';
import '../../../responsive/responsive.dart';
import '../../../widget/arrow_on_top.dart';
import '../../../widget/navbar_logo.dart';
import '../sections/sections_tree.dart';
part 'widgets/_navbar_desktop.dart';
part 'widgets/_mobile_drawer.dart';
part 'widgets/_bodydetail.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    App.init(context);
    final drawerProvider = Provider.of<DrawerProvider>(context);
    final ScrollController = Provider.of<ScrollProvider>(context);

    return Scaffold(
      key: drawerProvider.key,
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          return Stack(
            children: [
              _BodyDetails(),
              Responsive.isTablet(context) || Responsive.isMobile(context)
                  ? const _NavBarTablet()
                  : const _NavbarDesktop(),
              Responsive.isDesktop(context)
                  ? Consumer<ScrollProvider>(builder: (context, value, _) {
                      return AnimatedPositioned(
                        duration: Duration(milliseconds: 500),

                        // height: 200,
// 170/235
                        top: value.isOntop
                            ? (constraints.maxHeight - 370) / 2
                            : constraints.maxHeight - 290,
                        left: value.isOntop ? 230 : constraints.maxWidth - 290,
                        // bottom: value.isOntop ? null : 30,
                        // right: value.isOntop ? null : 60,
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 0, sigmaY: 0),
                          child: Column(
                            children: [
                              Container(
                                height: value.isOntop ? 300 : 250,
                                child: Stack(
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                          color: value.isOntop
                                              ? null
                                              : Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                              color: Colors.grey.withOpacity(
                                                  value.isOntop ? 0 : 0.5),
                                              spreadRadius: 5,
                                              blurRadius: 7,
                                              offset: Offset(0,
                                                  3), // changes position of shadow
                                            ),
                                          ],
                                          shape: BoxShape.circle),
                                      child: ImageSequenceAnimator(
                                        "assets/animation", //folderName
                                        "", //fileName
                                        1, //suffixStart
                                        4, //suffixCount
                                        "png", //fileFormat
                                        240, isLooping: true, isAutoPlay: true,
                                        fps: 24,
                                      ),
                                    ),
                                    Positioned(
                                      bottom: 0,
                                      right: 0,
                                      left: 0,
                                      child: Visibility(
                                        visible: !value.isOntop,
                                        child: Container(
                                          height: 60,
                                          child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0, left: 8, bottom: 8),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                  color: Colors.white,
                                                  boxShadow: [
                                                    BoxShadow(
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                      spreadRadius: 5,
                                                      blurRadius: 7,
                                                      offset: Offset(0,
                                                          3), // changes position of shadow
                                                    ),
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          15)),
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 16.0),
                                                child: Marquee(
                                                  text:
                                                      '*** This Site Is Still Underconstruction... Thank You For Your Patience ***',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  scrollAxis: Axis.horizontal,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  blankSpace: 20.0,
                                                  startPadding: 10.0,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              value.isOntop
                                  ? Column(
                                      children: [
                                        Text(
                                          "Shahabuddin Sani",
                                          style: GoogleFonts.robotoSlab(
                                            color: AppTheme.c!.text,
                                            fontWeight: FontWeight.w900,
                                            fontSize: 30.0,
                                          ),
                                        )
                                            .animate(delay: 1000.ms)
                                            .fadeIn(duration: 600.ms)
                                            .then(
                                                delay: 200.ms) // baseline=800ms
                                            .slide(),
                                        Text(
                                          "Software Engineer",
                                          style: GoogleFonts.fredoka(
                                            color: AppTheme.c!.text,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18.0,
                                          ),
                                        )
                                            .animate(delay: 1000.ms)
                                            .fadeIn(duration: 600.ms)
                                            .then(
                                                delay: 200.ms) // baseline=800ms
                                            .slide(),
                                      ],
                                    )
                                  : Container(),
                            ],
                          ),
                        ),
                      );
                    })
                  : Container(),
              Responsive.isDesktop(context)
                  ? Consumer<ScrollProvider>(builder: (context, value, _) {
                      return AnimatedPositioned(
                        duration: Duration(milliseconds: 500),

                        // height: 200,
// 170/235
                        top: value.isOntop
                            ? (constraints.maxHeight - 370) / 2
                            : constraints.maxHeight - 270,
                        left: value.isOntop ? 230 : constraints.maxWidth - 480,
                        // bottom: value.isOntop ? null : 30,
                        // right: value.isOntop ? null : 60,
                        child: !value.isOntop
                            ? ClipPath(
                                clipper: ThreeRoundedEdgesMessageClipper(),
                                child: Container(
                                  color: Color.fromARGB(135, 23, 23, 23),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 4.0, right: 4),
                                    child: ClipPath(
                                      clipper:
                                          ThreeRoundedEdgesMessageClipper(),
                                      child: Container(
                                        color: Colors.white,
                                        width: 250,
                                        child: Padding(
                                          padding: const EdgeInsets.all(16.0),
                                          child: Text(
                                            '''" This Site Is Still Underconstruction... Thank You For Your Patience "''',
                                            textAlign: TextAlign.center,
                                            style: AppText.btn,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Container(),
                      );
                    })
                  : Container(),
            ],
          );
        }),
      ),
    );
  }
}

class ThreeRoundedEdgesMessageClipper extends CustomClipper<Path> {
  final double bubbleRadius;
  final double fourthEdgeRadius;

  ThreeRoundedEdgesMessageClipper(
      {this.bubbleRadius = 30, this.fourthEdgeRadius = 2});

  @override
  Path getClip(Size size) {
    var path = Path();

    if (true) {
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width, size.height, Radius.circular(bubbleRadius)));
      var path2 = Path();
      path2.addRRect(RRect.fromLTRBAndCorners(0, 0, bubbleRadius, bubbleRadius,
          bottomRight: Radius.circular(fourthEdgeRadius)));
      path.addPath(
          path2, Offset(size.width - bubbleRadius, size.height - bubbleRadius));
    } else {
      path.addRRect(RRect.fromLTRBR(
          0, 0, size.width, size.height, Radius.circular(bubbleRadius)));
      var path2 = Path();
      path2.addRRect(RRect.fromLTRBAndCorners(0, 0, bubbleRadius, bubbleRadius,
          bottomLeft: Radius.circular(fourthEdgeRadius)));
      path.addPath(path2, const Offset(0, 0));
    }

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) => oldClipper != this;
}
