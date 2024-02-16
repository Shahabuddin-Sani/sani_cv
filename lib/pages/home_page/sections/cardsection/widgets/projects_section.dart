import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intrinsic_grid_view/intrinsic_grid_view.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/projects.dart';

class ProjectSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Projects> features = fetchFeatureList(context);

    List<Widget> buildWidgets = [
      for (int i = 0; i < features.length; i++)
        _buildWidget(features[i], 350 + (50 * i)),
    ];
    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: IntrinsicGridView.vertical(
          columnCount: 2,
          backgroundColor: AppTheme.c!.primary!,
          padding: EdgeInsets.all(8),
          // rowCount: 1,
          verticalSpace: 0,
          horizontalSpace: 0,
          children: buildWidgets),
    );
  }

  List<Projects> fetchFeatureList(BuildContext context2) {
    return <Projects>[
      Projects(
          name: "Pinoy Parent",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Pinoy Parent",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Pinoy Parent",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Pinoy Parent",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Pinoy Parent",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Pinoy Parent",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Pinoy Parent",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
      Projects(
          name: "Pinoy Parent",
          description:
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy",
          client: "Save The Children",
          clientLogo: "assets/photos/shurjo.png",
          technology: "technology",
          features: "features",
          noOfCollegues: "noOfCollegues",
          platformLogos: [
            "assets/photos/flutter.png",
            "assets/photos/android.png",
            "assets/photos/ios.png"
          ]),
    ];
  }

  Widget _buildWidget(Projects feature, int duration) {
    double radius = 5.0;

    return Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {},
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: FlipCard(
                  flipOnTouch: true,
                  // autoFlipDuration: const Duration(seconds: 2),
                  fill: Fill
                      .fillBack, // Fill the back side of the card to make in the same size as the front.
                  direction: FlipDirection.HORIZONTAL, // default
                  side: CardSide.FRONT, // The side to initially display.
                  front: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(radius))),
                      shadowColor: AppTheme.c!.background!,
                      child: Container(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16.0, vertical: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Image.asset(
                                feature.clientLogo,
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "Name:",
                                    textAlign: TextAlign.start,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    " ${feature.name}",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 11,
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
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Expanded(
                                      child: Container(
                                        width: double.infinity,
                                        child: Text(
                                          "${feature.description}",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Client:",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${feature.client}",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                    "${feature.features}",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Technology:",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${feature.technology}",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Team Size:",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "${feature.noOfCollegues}",
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Platform:",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children:
                                        getPlatform(feature.platformLogos),
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
                                        "View",
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
                      )),

                  back: Card(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(radius))),
                          shadowColor: AppTheme.c!.background!,
                          child: Container(
                            height: 250,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  // Image.asset(feature.imageUrl),
                                  Text(
                                    "${feature.name}",
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
                                  Text(
                                    "${feature.name}",
                                    textAlign: TextAlign.center,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 11,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ))
                      .animate()
                      .scale(
                          begin: Offset(0, 0),
                          curve: ElasticInOutCurve(),
                          duration: duration.ms),
                ),
              ),
            )) // inherits duration from fadeIn
        // runs after the above w/new duration
        ; // inherits the delay & duration from move;
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
