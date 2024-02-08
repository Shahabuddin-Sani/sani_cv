import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intrinsic_grid_view/intrinsic_grid_view.dart';
import '../../../../configs/configs.dart';

class CardsectionMobile extends StatefulWidget {
  const CardsectionMobile({Key? key}) : super(key: key);

  @override
  State<CardsectionMobile> createState() => _CardsectionMobileState();
}

class _CardsectionMobileState extends State<CardsectionMobile> {
  late BuildContext context2;

  @override
  Widget build(BuildContext context) {
    context2 = context;
    List<FeatureCardModel> features = fetchFeatureList(context2);

    List<Widget> buildWidgets = [
      for (int i = 0; i < features.length; i++)
        _buildWidget(features[i], 300 + (50 * i)),
    ];
    return Container(
        color: AppTheme.c!.background,
        padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: IntrinsicGridView.vertical(
                    columnCount: 4,
                    backgroundColor: AppTheme.c!.background!,
                    // rowCount: 1,
                    verticalSpace: 0,
                    horizontalSpace: 0,
                    children: buildWidgets),
              ),
            ]));
  }
}

List<FeatureCardModel> fetchFeatureList(BuildContext context2) {
  return <FeatureCardModel>[
    FeatureCardModel(
        'Mobile Recharge', FontAwesomeIcons.mobile, Color(0xFF33691E), () {}),
    FeatureCardModel('Bill Payment', FontAwesomeIcons.moneyBill1Wave,
        Color(0xFF33691E), () {}),
    FeatureCardModel(
        'QR Payment', FontAwesomeIcons.qrcode, Color(0xFF33691E), () {}),
    FeatureCardModel(
        'Quick Loan', FontAwesomeIcons.cashRegister, Color(0xFF33691E), () {}),
    FeatureCardModel('Add Credit Card', FontAwesomeIcons.creditCard,
        Color(0xFF33691E), () {}),
    FeatureCardModel(
        'Quick Guide', FontAwesomeIcons.bookOpen, Color(0xFF33691E), () {}),
    FeatureCardModel(
        'Transactions', FontAwesomeIcons.exchange, Color(0xFF33691E), () {}),
    FeatureCardModel(
        'Notifications', FontAwesomeIcons.droplet, Color(0xFF33691E), () {}),
    FeatureCardModel(
        'Advertisements', FontAwesomeIcons.bell, Color(0xFF33691E), () {}),
    FeatureCardModel('Merchant Payment', FontAwesomeIcons.sackDollar,
        Color(0xFF33691E), () {}),
    FeatureCardModel('Cash withdraw', FontAwesomeIcons.cashRegister,
        Color(0xFF33691E), () {}),
    FeatureCardModel(
        'Coupons', FontAwesomeIcons.bahtSign, Color(0xFF33691E), () {}),
  ];
}

class FeatureCardModel {
  String name;
  IconData image;
  Color colorIcon;
  void Function() onTouch;
  FeatureCardModel(this.name, this.image, this.colorIcon, this.onTouch);
}

Widget _buildWidget(FeatureCardModel feature, int duration) {
  double radius = 5.0;

  return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(radius))),
              shadowColor: AppTheme.c!.background!,
              child: InkWell(
                splashColor: Colors.green,
                onTap: () {
                  feature.onTouch();
                },
                child: Container(
                  height: 90,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          feature.image,
                          color: feature.colorIcon,
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
                ),
              ))
          .animate()
          .scale(
              begin: Offset(0, 0),
              curve: ElasticInOutCurve(),
              duration: duration.ms) // inherits duration from fadeIn
      // runs after the above w/new duration
      ; // inherits the delay & duration from move;
}
