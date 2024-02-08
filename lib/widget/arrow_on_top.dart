import 'package:sani_cv/animations/entrance_fader.dart';
import 'package:flutter/material.dart';
import 'package:sani_cv/provider/app_provider.dart';
import 'package:sani_cv/provider/scroll_provider.dart';
import 'package:provider/provider.dart';

class ArrowOnTop extends StatefulWidget {
  const ArrowOnTop({Key? key}) : super(key: key);

  @override
  ArrowOnTopState createState() => ArrowOnTopState();
}

class ArrowOnTopState extends State<ArrowOnTop> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return Positioned(
      bottom: 30,
      right: 20,
      child: EntranceFader(
        offset: const Offset(0, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
              borderRadius: BorderRadius.circular(8.0),
              onTap: () => scrollProvider.scroll(0),
              onHover: (isHovering) {
                if (isHovering) {
                  setState(() {
                    isHover = true;
                  });
                } else {
                  setState(() {
                    isHover = false;
                  });
                }
              },
              child: Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                  color: appProvider.isDark ? Colors.black : Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8.0),
                    bottomLeft: Radius.circular(8.0),
                  ),
                  boxShadow: [
                    const BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black26,
                      offset: Offset(1.0, 1.0),
                    )
                  ],
                ),
                child: Column(
                  children: [
                    Icon(
                      Icons.message,
                      color: Colors.green,
                      size: 24,
                    ),
                    Text(
                      "Messages",
                      style: TextStyle(fontSize: 12),
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
}
