import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:elite_design/features/main/data/model/data/product_data/product_data.dart';
import 'package:elite_design/features/main/data/repository_impl/product_repository_impl.dart';
import 'package:meta/meta.dart';

import '../../../domain/repository/product_repository.dart';

part 'saved_screen_event.dart';
part 'saved_screen_state.dart';

class SavedScreenBloc extends Bloc<SavedScreenEvent, SavedScreenState> {
  SavedScreenBloc() : super(SavedScreenState(products: List.empty())) {
    ProductRepository repository = ProductRepositoryImpl();

    on<SavedScreenEvent>((event, emit) {});

    on<SavedScreenInitial>((event, emit) async {
      log('SavedScreenInitial');
      emit(state.copyWith(products: await repository.getFavouriteProducts()));
    });

    on<OnClickDislike>((event, emit) async {
      await repository.updateFavouriteStatus(event.id);
      add(SavedScreenInitial());
    });
  }
}
