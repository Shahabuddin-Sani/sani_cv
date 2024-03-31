import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/footer_item.dart';

final List<FooterItem> footerItems = [
  FooterItem(
    iconPath: "assets/photos/map.png",
    title: "ADDRESS",
    text1: "Shewrapara Mirpur",
    text2: "Dhaka 1216 Bangladesh",
  ),
  FooterItem(
    iconPath: "assets/photos/phone.png",
    title: "PHONE",
    text1: "+880-1957205274",
    text2: " ",
  ),
  FooterItem(
    iconPath: "assets/photos/email.png",
    title: "EMAIL",
    text1: "sani.shahabuddin@gmail.com",
    text2: "kiwi123crow@gmail.com",
  ),
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
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
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
