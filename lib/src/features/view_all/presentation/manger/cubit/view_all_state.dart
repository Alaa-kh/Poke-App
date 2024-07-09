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
