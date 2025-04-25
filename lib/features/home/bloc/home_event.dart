abstract class HomeEvent {}

// This event adds a product to the wishlist
class HomeProductWishlistEventClicked extends HomeEvent {}

// This event adds a product to the favorite
class HomeProductFavoriteEventClicked extends HomeEvent {}

// This event navigates the favorites page
class HomeNavigateToCartPageEvent extends HomeEvent {}

// This event navigates the wishlist page
class HomeNavigateToWishlistPageEvent extends HomeEvent {}
