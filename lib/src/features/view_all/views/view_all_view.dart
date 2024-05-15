import 'package:poke/src/core/constants/packages.dart';

class ViewAllView extends StatelessWidget {
  const ViewAllView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ViewAllViewBody(),
      ),
    );
  }
}
