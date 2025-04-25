abstract class HomeState {}

abstract class HomeActionState extends HomeState {}

class HomeInitial extends HomeState {}

// State for loading data
class HomeLoadedSuccessfulState extends HomeState {}

// State for the spin icon while data is loading
class HomeLoadingState extends HomeState {}

class HomeErrorState extends HomeState {}

class HomeNavigateToWishlistState extends HomeActionState {}

class HomeNavigateToCartState extends HomeActionState {}
