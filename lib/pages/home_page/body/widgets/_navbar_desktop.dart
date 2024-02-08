part of '../home_page.dart';

class _NavbarDesktop extends StatefulWidget {
  const _NavbarDesktop({Key? key}) : super(key: key);

  @override
  State<_NavbarDesktop> createState() => _NavbarDesktopState();
}

class _NavbarDesktopState extends State<_NavbarDesktop> {
  @override
  Widget build(BuildContext context) {
    final appProvider = Provider.of<AppProvider>(context);
    final scrollProvider = Provider.of<ScrollProvider>(context);
    final TextEditingController _searchController = TextEditingController();

    return Container(
      height: 70,
      padding: EdgeInsets.only(bottom: 8, top: 4, right: 8, left: 8),
      color: appProvider.isDark ? Colors.black : AppTheme.c!.primary!,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                  child: Text(
                    "",
                    textAlign: TextAlign.center,
                    style: AppText.logoStyle!.copyWith(color: Colors.white),
                  ),
                ),
                Expanded(
                    child: Container(
                  width: 1,
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.home,
                      size: 24,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 1,
                        height: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "Work Experience",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 1,
                        height: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Projects",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 1,
                        height: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Text(
                      "Proficiency",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 1,
                        height: 12,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                Switch(
                  inactiveTrackColor: Colors.grey,
                  value: appProvider.isDark,
                  onChanged: (value) {
                    appProvider.setTheme(
                      !value ? ThemeMode.light : ThemeMode.dark,
                    );
                  },
                  activeColor: AppTheme.c!.primary!,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _NavBarTablet extends StatelessWidget {
  const _NavBarTablet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final drawerProvider = Provider.of<DrawerProvider>(context);

    return Padding(
      padding: Space.v!,
      child: Row(
        children: [
          Space.x1!,
          IconButton(
            highlightColor: Colors.white54,
            splashRadius: AppDimensions.normalize(10),
            onPressed: () {
              drawerProvider.key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
            ),
          ),
          Space.xm!,
          const NavBarLogo(),
          Space.x1!,
        ],
      ),
    );
  }
}
