import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_app/features/home/bloc/home_event.dart';
import 'package:bloc_app/features/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductFavoriteEventClicked>(homeProductFavoriteEventClicked);
    on<HomeProductWishlistEventClicked>(homeProductWishlistEventClicked);
    on<HomeNavigateToCartPageEvent>(homeNavigateToCartPageEvent);
    on<HomeNavigateToWishlistPageEvent>(homeNavigateToWishlistPageEvent);
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
