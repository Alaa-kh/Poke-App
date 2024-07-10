import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewDetailsItems extends StatelessWidget {
  const ViewAllViewDetailsItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final detailsPokemonItems =
        context.read<ViewAllCubit>().detailsPokemonItems;
    return BlocBuilder<ViewAllCubit, ViewAllState>(
        builder: (BuildContext context, ViewAllState state) {
      return ListView.separated(
          separatorBuilder: (BuildContext context, int index) =>
              const CustomVerticalSizedBox(45),
          itemCount: detailsPokemonItems.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Material(
                                  child:
                                      BlocBuilder<ViewAllCubit, ViewAllState>(
                                builder: (BuildContext context,
                                        ViewAllState state) =>
                                    DetailsView(
                                        index: index,
                                        detailsPokemonItem:
                                            detailsPokemonItems[index]),
                              ))),
                    ),
                child: Stack(
                    alignment: Alignment.topCenter,
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                          height: 361.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(26),
                              color: whiteClr),
                          child: Column(children: [
                            Padding(
                                padding: const EdgeInsets.all(11.0),
                                child: Container(
                                    height: 199.h,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: lightBlackClr))),
                            Animate(
                              effects: const [FadeEffect(), ScaleEffect()],
                              child: Text(detailsPokemonItems[index].name,
                                  style: Styles.titleText32),
                            ).animate().flip(delay: 1000.ms, duration: 900.ms),
                            const CustomVerticalSizedBox(15),
                            ViewAllViewInfoPoke(index: index)
                                .animate()
                                .scale(delay: 1000.ms, duration: 1000.ms)
                          ])),
                      Positioned(
                          top: -30.h,
                          width: 200.w,
                          height: 200.h,
                          child: SvgPicture.network(detailsPokemonItems[index]
                                  .sprites
                                  .other!
                                  .dreamWorld
                                  .frontDefault)
                              .animate()
                              .flip(delay: 1000.ms, duration: 900.ms))
                    ]).animate().scale(delay: 500.ms));
          });
    });
  }
}
