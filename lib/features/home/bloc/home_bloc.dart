import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_app/features/home/bloc/home_event.dart';
import 'package:bloc_app/features/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeInitialDataFetchEvent>(homeInitialDataFetchEvent);
    on<HomeProductFavoriteEventClicked>(homeProductFavoriteEventClicked);
    on<HomeProductWishlistEventClicked>(homeProductWishlistEventClicked);
    on<HomeNavigateToCartPageEvent>(homeNavigateToCartPageEvent);
    on<HomeNavigateToWishlistPageEvent>(homeNavigateToWishlistPageEvent);
  }

  FutureOr<void> homeInitialDataFetchEvent(
    HomeInitialDataFetchEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(HomeLoadingState());
    await Future.delayed(Duration(seconds: 3));
    emit(HomeLoadedSuccessfulState());
  }

  FutureOr<void> homeProductFavoriteEventClicked(
    HomeProductFavoriteEventClicked event,
    Emitter<HomeState> emit,
  ) {
    print("favorite product is clicked");
  }

  FutureOr<void> homeProductWishlistEventClicked(
    HomeProductWishlistEventClicked event,
    Emitter<HomeState> emit,
  ) {
    print("wishlist product is clicked");
  }

  FutureOr<void> homeNavigateToCartPageEvent(
    HomeNavigateToCartPageEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(HomeNavigateToCartState());
  }

  FutureOr<void> homeNavigateToWishlistPageEvent(
    HomeNavigateToWishlistPageEvent event,
    Emitter<HomeState> emit,
  ) {
    emit(HomeNavigateToWishlistState());
  }
}
