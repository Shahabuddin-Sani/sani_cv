import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/footer_item.dart';

final List<FooterItem> footerItems = [
  FooterItem(
    iconPath: "assets/photos/map.png",
    title: "ADDRESS",
    text1: "999 Carter Street",
    text2: "Sailor Springs, IL 64234",
  ),
  FooterItem(
    iconPath: "assets/photos/phone.png",
    title: "PHONE",
    text1: "+880-1957205274",
    text2: "+880-1819131372",
  ),
  FooterItem(
    iconPath: "assets/photos/email.png",
    title: "EMAIL",
    text1: "sani.shahabuddin@gmail.com",
    text2: "kiwi123crow@gmail.com",
  ),
  FooterItem(
    iconPath: "assets/photos/whatsapp.png",
    title: "WHATSAPP",
    text1: "+880-1957205274",
    text2: "+880-1819131372",
  )
];

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: _buildUi(),
    );
  }
}

Widget _buildUi() {
  return Center(
    child: LayoutBuilder(
      builder: (context, constraints) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 50.0),
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: footerItems
                    .map(
                      (footerItem) => Container(
                        height: 120.0,
                        width: constraints.maxWidth / 4.0 - 20.0,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    footerItem.iconPath,
                                    width: 25.0,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Text(
                                    footerItem.title,
                                    style: GoogleFonts.oswald(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.white,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 15.0,
                              ),
                              RichText(
                                textAlign: TextAlign.start,
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: "${footerItem.text1}\n",
                                      style: TextStyle(
                                        color: Colors.white,
                                        height: 1.8,
                                      ),
                                    ),
                                    TextSpan(
                                      text: "${footerItem.text2}\n",
                                      style: TextStyle(
                                        color: Colors.white,
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Flex(
              direction: Axis.horizontal,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Copyright (c) 2024 Shahabuddin Sani. All rights Reserved",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Privacy Policy",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "|",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: MouseRegion(
                        cursor: SystemMouseCursors.click,
                        child: Text(
                          "Terms & Conditions",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        );
      },
    ),
  );
}
