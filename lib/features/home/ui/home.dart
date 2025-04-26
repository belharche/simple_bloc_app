import 'package:bloc_app/features/home/bloc/home_bloc.dart';
import 'package:bloc_app/features/home/bloc/home_event.dart';
import 'package:bloc_app/features/home/bloc/home_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  void initState() {
    homeBloc.add(HomeInitialDataFetchEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
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
      builder: (context, state) {
        if (state is HomeInitial || state is HomeLoadingState) {
          return Scaffold(
            body: Center(child: CircularProgressIndicator(color: Colors.teal)),
          );
        } else if (state is HomeLoadedSuccessfulState) {
          return Scaffold(
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
          );
        } else if (state is HomeErrorState) {
          return Scaffold(
            backgroundColor: Colors.teal,
            body: Center(
              child: Text(
                'An Error Happened',
                style: TextStyle(color: Colors.redAccent),
              ),
            ),
          );
        } else {
          return Scaffold(
            body: Center(child: Text('No state has been detected !!!')),
          );
        }
      },
    );
  }
}
