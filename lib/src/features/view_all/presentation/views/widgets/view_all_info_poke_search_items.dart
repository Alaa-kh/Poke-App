import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewInfoPokeSearchItems extends StatelessWidget {
  const ViewAllViewInfoPokeSearchItems({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    final searchList = context.read<ViewAllCubit>().searchList;
    return BlocBuilder<ViewAllCubit, ViewAllState>(builder: (context, state) {
      return state is ViewAllSuccess
          ? searchList[index].types.length > 1
              ? Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  ViewAllViewDescriptionPoke(
                      text: searchList[index].types[0].type.name,
                      emoji: searchList[index].types[0].type.name),
                  const CustomHorizontalSizedBox(10),
                  ViewAllViewDescriptionPoke(
                      text: searchList[index].types[1].type.name,
                      emoji: searchList[index].types[1].type.name),
                ])
              : ViewAllViewDescriptionPoke(
                  width: 120.w,
                  text: searchList[index].types[0].type.name,
                  emoji: searchList[index].types[0].type.name)
          : const CircularProgressIndicator();
    });
  }
}
