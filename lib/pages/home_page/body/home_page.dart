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

    return Scaffold(
      key: GlobalKey<ScaffoldState>(),
      extendBodyBehindAppBar: true,
      drawer: !Responsive.isDesktop(context) ? const _MobileDrawer() : null,
      body: SafeArea(
        child: Stack(
          children: [
            _BodyDetails(),
            Responsive.isTablet(context) || Responsive.isMobile(context)
                ? const _NavBarTablet()
                : const _NavbarDesktop(),
          ],
        ),
      ),
    );
  }
}
