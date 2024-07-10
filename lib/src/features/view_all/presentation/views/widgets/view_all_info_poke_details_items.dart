import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewInfoPokeDetailsItems extends StatelessWidget {
  const ViewAllViewInfoPokeDetailsItems({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final detailsPokemonItems =
        context.read<ViewAllCubit>().detailsPokemonItems;
    return BlocBuilder<ViewAllCubit, ViewAllState>(
        builder: (BuildContext context, ViewAllState state) {
      return state is ViewAllSuccess
          ? detailsPokemonItems[index].types.length > 1
              ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ViewAllViewDescriptionPoke(
                      text: detailsPokemonItems[index].types[0].type.name,
                      emoji: detailsPokemonItems[index].types[0].type.name),
                  const CustomHorizontalSizedBox(10),
                  ViewAllViewDescriptionPoke(
                      text: detailsPokemonItems[index].types[1].type.name,
                      emoji: detailsPokemonItems[index].types[1].type.name),
                ])
              : ViewAllViewDescriptionPoke(
                  width: 120.w,
                  text: detailsPokemonItems[index].types[0].type.name,
                  emoji: detailsPokemonItems[index].types[0].type.name)
          : Lottie.asset(AnimationsAssets.loadingAnimation,
              width: 50.w, height: 50.h);
    });
  }
}
