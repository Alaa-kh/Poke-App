import 'package:poke/src/core/constants/packages.dart';

class HomeViewSearchIcon extends StatelessWidget {
  const HomeViewSearchIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
        builder: (BuildContext context, HomeState state) {
      return Container(
          height: 43.h,
          width: 43.w,
          decoration: BoxDecoration(color: babyBlueClr, shape: BoxShape.circle),
          child: state is HomeLoading &&
                  context.read<HomeCubit>().searchHomeController.text.isNotEmpty
              ? const Padding(
                  padding: EdgeInsets.all(15.0),
                  child: CircularProgressIndicator(
                      color: whiteClr,
                      strokeWidth: 3,
                      valueColor: AlwaysStoppedAnimation(whiteClr)))
              : IconButton(
                  onPressed: () {
                    try {
                      context
                                  .read<HomeCubit>()
                                  .searchHomeController
                                  .text
                                  .isNotEmpty &&
                              context
                                  .read<HomeCubit>()
                                  .searchListHome
                                  .isNotEmpty
                          ? Navigator.push(context,
                              MaterialPageRoute(builder: (_) {
                              return BlocBuilder<HomeCubit, HomeState>(
                                builder:
                                    (BuildContext context, HomeState state) =>
                                        const HomeViewSearchDetailsItem(),
                              );
                            }))
                          : ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                  backgroundColor: redClr,
                                  animation: AlwaysStoppedAnimation(3),
                                  duration: Duration(seconds: 3),
                                  content: Text(
                                      'Pokmon does not exist! Please enter a valid name')));
                    } catch (_) {}
                  },
                  icon: const Icon(Icons.search, color: whiteClr)));
    });
  }
}
