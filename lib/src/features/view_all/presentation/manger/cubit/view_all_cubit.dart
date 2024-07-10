import 'package:poke/src/core/constants/packages.dart';
part 'view_all_state.dart';

class ViewAllCubit extends Cubit<ViewAllState> {
  ViewAllCubit() : super(ViewAllInitial());

  final DetailsRepoImp _detailsRepo = DetailsRepoImp();
  List<DetailsModel> detailsPokemonItems = [];
  final ViewAllRepoImp _viewAllRepo = ViewAllRepoImp();
  ViewAllModel? viewAllModel;

  int offset = 0;
  Future<void> getDetails({final int? limit}) async {
    try {
      emit(ViewAllLoading());
      final resultAllPokemon =
          await _viewAllRepo.getAllPokemon(limit: limit, offset: offset);

      if (resultAllPokemon is Failures) {
        getDetails(limit: limit);
      } else if (resultAllPokemon is ViewAllModel) {
        viewAllModel = resultAllPokemon;
        for (int i = 0; i < viewAllModel!.results.length; i++) {
          final result = await _detailsRepo
              .getDetailsPokemon(viewAllModel!.results[i].name);

          if (result is Failures) {
            getDetails(limit: limit);
          } else if (result is DetailsModel) {
            detailsPokemonItems.add(result);
            emit(ViewAllSuccess(detailsModel: detailsPokemonItems));
          }
        }
      }
    } catch (_) {}
  }

  // Search View All
  TextEditingController searchController = TextEditingController();
  List<DetailsModel> searchList = [];
  void addSearchToList(String searchName) async {
    try {
      emit(ViewAllLoading());
      final result = await _detailsRepo
          .getDetailsPokemon(searchController.text.toLowerCase());

      searchName = searchController.text.toLowerCase();

      searchList = detailsPokemonItems.where((value) {
        var searchTitle = value.name.toLowerCase();
        return searchTitle.contains(searchName.toLowerCase());
      }).toList();
      searchList.add(result);
      emit(ViewAllSuccess(detailsModel: searchList));
      print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>> ${searchList[0].name}');
    } catch (e) {
      print('=============================== $e');
    }
  }

  int selected = 0;

  void selectedBar(int index , List<DetailsModel> array) {
    selected = index;
    emit(ViewAllInitial());
    emit(ViewAllNavigation(index: index, detailsModel: array));
  }

  void add() {
    offset += 5;

    try {
      detailsPokemonItems.clear();
      getDetails(limit: 5);
    } catch (_) {}
  }

  void mines() {
    if (offset >= 5) {
      offset -= 5;
      try {
        getDetails(limit: 5);
        detailsPokemonItems.clear();
      } catch (_) {}
    }
  }

  int currntIndex = 0;
  void changeIndex(int index) {
    currntIndex = index;
  }
}
