import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewInfoPoke extends StatelessWidget {
  const ViewAllViewInfoPoke({
    Key? key,
    required this.index,
  }) : super(key: key);
  final int index;
  @override
  Widget build(BuildContext context) {
    return context.read<ViewAllCubit>().searchList.isEmpty &&
            context.read<ViewAllCubit>().searchController.text.isEmpty
        ? ViewAllViewInfoPokeDetailsItems(index: index)
        : ViewAllViewInfoPokeSearchItems(index: index);
  }
}
