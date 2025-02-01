part of 'splash_screen_bloc.dart';




class SplashScreenState {
  final SplashScreenStatus state;
  SplashScreenState(this.state);
  
  copyWith({required SplashScreenStatus state}) {
    return SplashScreenState(state);
  }
  
}

enum SplashScreenStatus{
  INITAL, LOADING, HOME, LOGIN
}

