import 'package:poke/src/core/constants/packages.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    Key? key,
    this.index,
    required this.detailsPokemonItem,
  }) : super(key: key);
  final int? index;
  final DetailsModel detailsPokemonItem;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewAllCubit, ViewAllState>(
        builder: (BuildContext context, ViewAllState state) =>
            SingleChildScrollView(
                child: Column(children: [
              DetailsViewSectionUp(
                  image: detailsPokemonItem
                      .sprites.other!.dreamWorld.frontDefault),
              const CustomVerticalSizedBox(90),
              DetailsViewNamePoke(name: detailsPokemonItem.name)
                  .animate()
                  .shimmer(delay: 1000.ms),
              detailsPokemonItem.types.length > 1
                  ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      DetailsViewDescriptionPoke(
                          text: detailsPokemonItem.types[0].type.name,
                          emoji: detailsPokemonItem.types[0].type.name),
                      const CustomHorizontalSizedBox(10),
                      DetailsViewDescriptionPoke(
                          text: detailsPokemonItem.types[1].type.name,
                          emoji: detailsPokemonItem.types[1].type.name),
                    ])
                  : DetailsViewDescriptionPoke(
                      width: 120.w,
                      text: detailsPokemonItem.types[0].type.name,
                      emoji: detailsPokemonItem.types[0].type.name),
              const CustomVerticalSizedBox(40),
              BlocBuilder<ViewAllCubit, ViewAllState>(
                  builder: (BuildContext context, ViewAllState state) =>
                      IndexedStack(
                          index: context.read<ViewAllCubit>().selected,
                          children: [
                            DetailsViewAboutTable(
                              detailsModel: detailsPokemonItem,
                            ),
                            DetailsViewStatusTable(
                                detailsPokemonItem: detailsPokemonItem)
                          ]))
            ])));
  }
}
