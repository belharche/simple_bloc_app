import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bloc_wishlist_event.dart';
part 'bloc_wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
