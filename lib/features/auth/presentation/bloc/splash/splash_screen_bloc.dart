import 'package:bloc/bloc.dart';

import '../../../../../core/local_storage/hive_helper.dart';

part 'splash_screen_event.dart';
part 'splash_screen_state.dart';

class SplashScreenBloc extends Bloc<SplashScreenEvent, SplashScreenState> {
  SplashScreenBloc() : super(SplashScreenState(SplashScreenStatus.INITAL)) {
    HiveHelper hiveHelper = HiveHelper();
    on<SplashScreenEvent>((event, emit) {

    });

    on<Init>((event, emit) async {
      emit(state.copyWith(state: SplashScreenStatus.LOADING));

      await Future.delayed(Duration(seconds: 2), () async {
        if(await hiveHelper.isSignedIn()){
          emit(state.copyWith(state: SplashScreenStatus.HOME));
        }
        else {
          emit(state.copyWith(state: SplashScreenStatus.LOGIN));
        }
      });
    });
  }
}
