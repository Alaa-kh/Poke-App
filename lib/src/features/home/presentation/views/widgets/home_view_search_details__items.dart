import 'package:poke/src/core/constants/packages.dart';

class HomeViewSearchDetailsItem extends StatelessWidget {
  const HomeViewSearchDetailsItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchListHome = context.read<HomeCubit>().searchListHome;

    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
                child: Column(children: [
              HomeViewSectionUp(
                  image:
                      searchListHome[0].sprites.other!.dreamWorld.frontDefault),
              const CustomVerticalSizedBox(90),
              DetailsViewNamePoke(name: searchListHome[0].name),
              searchListHome[0].types.length > 1
                  ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      DetailsViewDescriptionPoke(
                          text: searchListHome[0].types[0].type.name,
                          emoji: searchListHome[0].types[0].type.name),
                      const CustomHorizontalSizedBox(10),
                      DetailsViewDescriptionPoke(
                          text: searchListHome[0].types[1].type.name,
                          emoji: searchListHome[0].types[1].type.name),
                    ])
                  : DetailsViewDescriptionPoke(
                      width: 120.w,
                      text: searchListHome[0].types[0].type.name,
                      emoji: searchListHome[0].types[0].type.name),
              const CustomVerticalSizedBox(40),
              BlocBuilder<HomeCubit, HomeState>(
                  builder: (BuildContext context, HomeState state) =>
                      IndexedStack(
                          index: context.read<HomeCubit>().select,
                          children: const [
                            HomeViewAboutTable(),
                            HomeViewStatusTable()
                          ]))
            ])),
            bottomNavigationBar: BlocBuilder<HomeCubit, HomeState>(
                builder: (BuildContext context, HomeState state) =>
                    const HomeViewDetailsSearchBottomBarContainer())));
  }
}
