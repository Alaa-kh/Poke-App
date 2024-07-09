import 'package:poke/src/core/constants/packages.dart';

abstract class DetailsRepo {
  Future<void> getDetailsPokemon(String namePokemon);
}

class DetailsRepoImp extends DetailsRepo {
  @override
  Future getDetailsPokemon(String namePokemon) async {
    try {
      final result =
          await Crud().get(url: '${AppApi.detailsPokemon}$namePokemon');

      return result.fold(
          (failure) => failure, (details) => DetailsModel.fromJson(details));
    } catch (_) {
      return Failures(errMessage: 'حدث خطأ ما');
    }
  }
}
