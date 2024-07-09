import 'package:poke/src/core/constants/packages.dart';

class ViewAllViewBody extends StatelessWidget {
  const ViewAllViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(child: ViewAllViewMainContainer());
  }
}
