import 'package:poke/src/core/constants/packages.dart';

class ViewAllView extends StatelessWidget {
  const ViewAllView({
    Key? key,
    this.toggleTheme,
  }) : super(key: key);
  final VoidCallback? toggleTheme;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeData>(
        builder: (BuildContext context, ThemeData state) => SafeArea(
            child: Scaffold(
                appBar: viewAllViewAppBar(context),
                body: Stack(alignment: Alignment.center, children: [
                  Image.asset(ImagesAssets.backgroundImage,
                      fit: BoxFit.fill, width: double.infinity),
                  const ViewAllViewBody()
                ]),
                bottomNavigationBar: const ViewAllViewNavigationBar())));
  }
}
