part of 'home_screen_bloc.dart';



class HomeScreenEvent {}


class HomeScreenInitial extends HomeScreenEvent{}
class FilterCategories extends HomeScreenEvent{
  final String query;
  FilterCategories({required this.query});
}