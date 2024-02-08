part of '../home_page.dart';

class _BodyDetails extends StatelessWidget {
  const _BodyDetails({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);
    return ListView.builder(
      controller: scrollProvider.controller,
      itemCount: SectionTree.views.length,
      itemBuilder: (context, index) => SectionTree.views[index],
    );
  }
}
