import 'package:flutter_animate/flutter_animate.dart';
import 'package:poke/src/core/constants/packages.dart';

class DetailsViewBody extends StatelessWidget {
  const DetailsViewBody({
    Key? key,
    this.index,
    required this.detailsPokemonItems,
  }) : super(key: key);
  final int? index;
  final List<DetailsModel> detailsPokemonItems;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewAllCubit, ViewAllState>(
        builder: (BuildContext context, ViewAllState state) =>
            SingleChildScrollView(
                child: Column(children: [
              DetailsViewSectionUp(
                  image: detailsPokemonItems[index!]
                      .sprites
                      .other!
                      .dreamWorld
                      .frontDefault),
              const CustomVerticalSizedBox(90),
              DetailsViewNamePoke(name: detailsPokemonItems[index!].name)
                  .animate()
                  .shimmer(delay: 1000.ms),
              detailsPokemonItems[index!].types.length > 1
                  ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      DetailsViewDescriptionPoke(
                          text: detailsPokemonItems[index!].types[0].type.name,
                          emoji:
                              detailsPokemonItems[index!].types[0].type.name),
                      const CustomHorizontalSizedBox(10),
                      DetailsViewDescriptionPoke(
                          text: detailsPokemonItems[index!].types[1].type.name,
                          emoji:
                              detailsPokemonItems[index!].types[1].type.name),
                    ])
                  : DetailsViewDescriptionPoke(
                      width: 120.w,
                      text: detailsPokemonItems[index!].types[0].type.name,
                      emoji: detailsPokemonItems[index!].types[0].type.name),
              const CustomVerticalSizedBox(40),
              IndexedStack(
                  index: context.read<ViewAllCubit>().selected,
                  children: [
                    DetailsViewAboutTable(index: index!),
                    DetailsViewStatusTable(index: index!)
                  ])
            ])));
  }
}
