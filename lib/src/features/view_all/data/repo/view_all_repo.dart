import 'package:poke/src/core/constants/packages.dart';

abstract class ViewAllRepo {
  Future<void> getAllPokemon({final int? limit, final int? offset});
}

class ViewAllRepoImp extends ViewAllRepo {
  @override
  Future getAllPokemon({final int? limit, final int? offset}) async {
    try {
      final result = await Crud()
          .get(url: '${AppApi.allPokemon}?limit=$limit&offset=$offset');

      return result.fold(
        (failure) => failure,
        (viewAll) => ViewAllModel.fromJson(viewAll),
      );
    } catch (_) {
      return Failures(errMessage: 'حدث خطأ ما');
    }
  }
}
