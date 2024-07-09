import 'package:poke/src/core/constants/packages.dart';
import 'package:poke/src/features/home/data/model/home_model.dart';

abstract class HomeRepo {
  Future<void> getAllPokemon();
}

class HomeRepoImp extends HomeRepo {
  @override
  Future getAllPokemon() async {
    try {
      final result = await Crud().get(url: AppApi.allPokemon);

      return result.fold(
          (failure) => failure, (home) => HomeModel.fromJson(home));
    } catch (_) {
      return Failures(errMessage: 'حدث خطأ ما');
    }
  }
}
