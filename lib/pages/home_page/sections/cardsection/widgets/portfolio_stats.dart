import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sani_cv/configs/app_theme.dart';
import 'package:sani_cv/pages/home_page/sections/cardsection/widgets/models/stat.dart'; 

final List<Stat> stats = [
  // Stat(count: "9", text: "Clients"),
  Stat(count: "15+", text: "Projects"),
  Stat(count: "7", text: "Published\nApps"),
  Stat(count: "6", text: "Years\nExperience"),
];

class PortfolioStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 600,
      child: _buildUi(),
    );
  }

  Widget _buildUi() {
    return Container(
      child: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return Row(
            children: stats.map((stat) {
              return Container(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                // Just use the helper here really

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      stat.count,
                      style: GoogleFonts.oswald(
                        fontWeight: FontWeight.w700,
                        fontSize: 32.0,
                        color: AppTheme.c!.textSub2,
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      stat.text,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w900,
                        color: AppTheme.c!.primary,
                      ),
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                    Container(
                      width: 4,
                      height: 40,
                      color: AppTheme.c!.textSub2,
                    ),
                    SizedBox(
                      width: 12.0,
                    ),
                  ],
                ),
              );
            }).toList(),
          );
        },
      ),
    );
  }
}
