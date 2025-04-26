abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

class HomeLoadedSuccessfulState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeNavigateToWishlistState extends HomeActionState {}

class HomeNavigateToCartState extends HomeActionState {}
