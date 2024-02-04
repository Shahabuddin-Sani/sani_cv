import '../../../../../responsive/responsive.dart';
import '../cardsection/cardsection_desktop.dart';
import '../cardsection/cardsection_mobile.dart';
import '../cardsection/cardsection_tab.dart';
import 'package:flutter/material.dart';

class Cardsection extends StatelessWidget {
  const Cardsection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      tablet: CardsectionTab(),
      mobile: CardsectionMobile(),
      desktop: CardsectionDesktop(),
    );
  }
}
