import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewMainContainer extends StatelessWidget {
  const ViewAllViewMainContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewAllCubit, ViewAllState>(
        builder: (BuildContext context, ViewAllState state) => Padding(
            padding: const EdgeInsets.all(18.0),
            child: state is ViewAllLoading
                ? Lottie.asset(AnimationsAssets.loadingAnimation,
                    width: 100.w, height: 100.h, alignment: Alignment.center)
                : Column(children: [
                    const CustomVerticalSizedBox(40),
                    context.read<ViewAllCubit>().searchList.isEmpty &&
                            context
                                .read<ViewAllCubit>()
                                .searchController
                                .text
                                .isEmpty
                        ? const ViewAllViewDetailsItems()
                        : const ViewAllViewSearchItems()
                            .animate()
                            .scale(delay: 800.ms),
                    const CustomVerticalSizedBox(30)
                  ])));
  }
}
