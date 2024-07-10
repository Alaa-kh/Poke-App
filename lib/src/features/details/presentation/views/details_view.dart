import 'package:poke/src/core/constants/packages.dart';
import 'package:poke/src/features/details/presentation/views/widgets/details_view_bottom_bar_container.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({
    Key? key,
    required this.index,
    required this.detailsPokemonItem,
  }) : super(key: key);
  final int index;
  final DetailsModel detailsPokemonItem;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewAllCubit, ViewAllState>(
        builder: (BuildContext context, ViewAllState state) => SafeArea(
            child: BlocBuilder<ViewAllCubit, ViewAllState>(
                builder: (context, state) => Scaffold(
                    body: DetailsViewBody(
                     detailsPokemonItem: detailsPokemonItem),
                    bottomNavigationBar:
                        const DetailsViewBottomBarContainer()))));
  }
}
