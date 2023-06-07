import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:block_3/data/grosery_data.dart';
import 'package:block_3/feature/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialEvent>(homeInitialEvent);
    on<HomeProductWislistButtonClickedEvent>(
        homeProductWislistButtonClickedEvent);
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);
    on<HomeWislistButtonClickedEvent>(homeWislistButtonClickedEvent);
    on<HomeCartButtonClickedEvent>(homeCartButtonClickedEvent);
  }

  FutureOr<void> homeInitialEvent(
      HomeInitialEvent event, Emitter<HomeState> emit) async {
    emit(HonLoadingState());
    await Future.delayed(const Duration(seconds: 3));
    emit(HomeLoadedSuccessState(
        products: GroseryData.groceryProducts
            .map((e) => ProducDatatModel(
                id: e['id'],
                name: e['name'],
                decscription: e['decscription'],
                price: e['price'],
                imageUrl: e[' imageUrl']))
            .toList()));
  }
}

FutureOr<void> homeProductWislistButtonClickedEvent(
    HomeProductWislistButtonClickedEvent event, Emitter<HomeState> emit) {
  print('Wishlist product clicked');
}

FutureOr<void> homeProductCartButtonClickedEvent(
    HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
  print('Cart product clicked');
}

FutureOr<void> homeWislistButtonClickedEvent(
    HomeWislistButtonClickedEvent event, Emitter<HomeState> emit) {
  print('wislest navigate clicket');
  emit(HomeNavigateTowishlistPageActionState());
}

FutureOr<void> homeCartButtonClickedEvent(
    HomeCartButtonClickedEvent event, Emitter<HomeState> emit) {
  print('cart navigate clicket');
  emit(HomeNavigateToCartPageActionState());
}
