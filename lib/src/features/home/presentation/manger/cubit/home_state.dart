part of 'home_cubit.dart';

class HomeState {}

class HomeInitial extends HomeState {}

class HomeLoading extends HomeState {}

class HomeSuccess extends HomeState {
  List<DetailsModel> detailsModel;
  HomeSuccess({
    required this.detailsModel,
  });
}
