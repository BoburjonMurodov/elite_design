part of 'saved_screen_bloc.dart';

@immutable
sealed class SavedScreenEvent {}


class SavedScreenInitial extends SavedScreenEvent {}
class OnClickDislike extends SavedScreenEvent {
  String id;
  int currentIndex;

  OnClickDislike({required this.id, required this.currentIndex});
}


