import 'package:bloc_app/features/home/bloc/home_bloc.dart';
import 'package:bloc_app/features/home/bloc/home_event.dart';
import 'package:bloc_app/features/home/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartState) {
          Navigator.pushNamed(context, '/cart');
        }
        if (state is HomeNavigateToWishlistState) {
          Navigator.pushNamed(context, '/wishlist');
        }
      },
      builder:
          (context, state) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text('Home'),
              actions: [
                IconButton(
                  onPressed: () {
                    homeBloc.add(HomeNavigateToWishlistPageEvent());
                  },
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {
                    homeBloc.add(HomeNavigateToCartPageEvent());
                  },
                  icon: Icon(Icons.local_grocery_store_outlined),
                ),
              ],
            ),
          ),
    );
  }
}
