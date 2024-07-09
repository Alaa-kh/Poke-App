import 'package:poke/src/core/constants/packages.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  final DetailsRepoImp _detailsRepo = DetailsRepoImp();
  List<DetailsModel> detailsPokemonItems = [];
  final ViewAllRepoImp _viewAllRepo = ViewAllRepoImp();
  ViewAllModel? viewAllModel;

  Future<void> getDetails() async {
    try {
      emit(HomeLoading());
      final resultAllPokemon = await _viewAllRepo.getAllPokemon();

      if (resultAllPokemon is Failures) {
        getDetails();
      } else if (resultAllPokemon is ViewAllModel) {
        viewAllModel = resultAllPokemon;
        for (int i = 0; i < viewAllModel!.results.length; i++) {
          final result = await _detailsRepo
              .getDetailsPokemon(viewAllModel!.results[i].name);

          if (result is Failures) {
            getDetails();
          } else if (result is DetailsModel) {
            detailsPokemonItems.add(result);
            emit(HomeSuccess(detailsModel: detailsPokemonItems));
          }
        }
      }
    } catch (_) {}
  }

  // Search Home
  TextEditingController searchHomeController = TextEditingController();
  List<DetailsModel> searchListHome = [];

  void addSearchToListHome(String name) async {
    try {
      emit(HomeLoading());
      final result = await _detailsRepo
          .getDetailsPokemon(searchHomeController.text.toLowerCase());

      name = searchHomeController.text.toLowerCase();

      searchListHome = detailsPokemonItems.where((value) {
        var searchTitle = value.name.toLowerCase();
        return searchTitle.contains(name.toLowerCase());
      }).toList();
      searchListHome.add(result);

      emit(HomeSuccess(detailsModel: searchListHome));
      print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ${searchListHome[0].name}');
    } catch (e) {
      print('=============================== $e');
    }
  }

  int select = 0;

  void selected(int index) {
    select = index;
  }
}
