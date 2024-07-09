import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewSearchItems extends StatelessWidget {
  const ViewAllViewSearchItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final searchList = context.read<ViewAllCubit>().searchList;
    return Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
          image: AssetImage(
            ImagesAssets.backgroundImage,
          ),
          fit: BoxFit.fill,
        )),
        child: BlocBuilder<ViewAllCubit, ViewAllState>(
            builder: (BuildContext context, ViewAllState state) =>
                ListView.separated(
                    separatorBuilder: (BuildContext context, int index) =>
                        const CustomVerticalSizedBox(45),
                    itemCount: searchList.length,
                    shrinkWrap: true,
                    physics: const ScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext context) => Material(
                                      child: DetailsView(
                                          index: index,
                                          detailsPokemonItems: searchList)))),
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
                                                  borderRadius:
                                                      BorderRadius.circular(20),
                                                  color: lightBlackClr))),
                                      Text(searchList[index].name,
                                          style: Styles.titleText32),
                                      const CustomVerticalSizedBox(15),
                                      ViewAllViewInfoPoke(index: index)
                                    ])),
                                Positioned(
                                    top: -30.h,
                                    width: 200.w,
                                    height: 200.h,
                                    child: SvgPicture.network(searchList[index]
                                        .sprites
                                        .other!
                                        .dreamWorld
                                        .frontDefault))
                              ]));
                    })));
  }
}
