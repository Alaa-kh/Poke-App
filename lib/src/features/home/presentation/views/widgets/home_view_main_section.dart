import 'package:poke/src/core/constants/packages.dart';

class HomeViewMainSection extends StatelessWidget {
  const HomeViewMainSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Image.asset(ImagesAssets.homeImage),
      RichText(
          text: TextSpan(
              text: 'Poké',
              style: Styles.titleLarge.copyWith(color: darkClr),
              children: <TextSpan>[
            TextSpan(
                text: 'book',
                style: Styles.titleLarge
                    .copyWith(fontWeight: FontWeight.bold, color: babyBlueClr))
          ])),
      const Text(
        'Largest Pokémon index with information about every Pokemon you can think of. ',
        style: Styles.titleSmall,
        textAlign: TextAlign.center,
      ),
      const CustomVerticalSizedBox(20)
    ]);
  }
}
