import 'package:bloc_app/features/home/bloc/home_bloc.dart';
import 'package:bloc_app/features/home/bloc/home_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer(
      bloc: homeBloc,
      listener: (context, state) {},
      builder:
          (context, state) => Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.teal,
              title: Text('Home'),
              actions: [
                IconButton(
                  onPressed: () {
                    homeBloc.add(HomeProductFavoriteEventClicked());
                  },
                  icon: Icon(Icons.favorite_border),
                ),
                IconButton(
                  onPressed: () {
                    homeBloc.add(HomeProductWishlistEventClicked());
                  },
                  icon: Icon(Icons.local_grocery_store_outlined),
                ),
              ],
            ),
          ),
    );
  }
}
