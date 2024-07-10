part of 'view_all_cubit.dart';

class ViewAllState {}

class ViewAllInitial extends ViewAllState {}

class ViewAllLoading extends ViewAllState {}

class ViewAllSuccess extends ViewAllState {
  List<DetailsModel> detailsModel;

  ViewAllSuccess({
    required this.detailsModel,
  });
}

class ViewAllNavigation extends ViewAllState {
  final int index;
  final List<DetailsModel> detailsModel;
  ViewAllNavigation({
    required this.index,
    required this.detailsModel,
  });
}
