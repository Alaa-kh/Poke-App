import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewBody extends StatelessWidget {
  const ViewAllViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage(
          ImagesAssets.backgroundImage,
        ),
        fit: BoxFit.fill,
      )),
      child: const CustomScrollView(slivers: [
        SliverToBoxAdapter(
          child: ViewAllViewUpContainer(),
        ),
        SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.all(18.0),
              child: Column(
                children: [
                  CustomVerticalSizedBox(20),
                  ViewAllViewTextField(),
                  CustomVerticalSizedBox(80),
                  ViewAllViewMainContainer(),
                  Spacer(),
                  ViewAllViewNavigationBar()
                ],
              ),
            ))
      ]),
    );
  }
}
