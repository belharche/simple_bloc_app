import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_app/features/home/bloc/home_event.dart';
import 'package:bloc_app/features/home/bloc/home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductFavoriteEventClicked>(homeProductFavoriteEventClicked);
    on<HomeProductWishlistEventClicked>(homeProductWishlistEventClicked);
    on<HomeNavigateToFavoritePageEvent>(homeNavigateToFavoritePageEvent);
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

  FutureOr<void> homeNavigateToFavoritePageEvent(
    HomeNavigateToFavoritePageEvent event,
    Emitter<HomeState> emit,
  ) {
    print("favorite navigating is clicked");
  }

  FutureOr<void> homeNavigateToWishlistPageEvent(
    HomeNavigateToWishlistPageEvent event,
    Emitter<HomeState> emit,
  ) {
    print("wishlist navigating is clicked");
  }
}
