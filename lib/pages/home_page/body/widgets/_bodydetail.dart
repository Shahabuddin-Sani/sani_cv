part of '../home_page.dart';

class _BodyDetails extends StatelessWidget {
  const _BodyDetails({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return NotificationListener<ScrollNotification>(
      onNotification: (scrollNotification) {
        if (scrollNotification.metrics.pixels > 180.00) {
          scrollProvider.setIsOnTop(false);
        } else {
          scrollProvider.setIsOnTop(true);
        }
        // print(
        //     "Sani" + "${scrollNotification.metrics.pixels}"); // <-- This is it.
        return false;
      },
      child: ListView.builder(
        controller: scrollProvider.controller,
        itemCount: SectionTree.views.length,
        itemBuilder: (context, index) => SectionTree.views[index],
      ),
    );
  }
}
