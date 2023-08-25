import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home/home_bloc.dart';
import '../widget/list_tile_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isSearching = false;
  String searchText = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: !isSearching
            ? const Text('Music Player')
            : TextField(
                onChanged: (newText) {
                  BlocProvider.of<HomeBloc>(context).add(SearchEvent(newText));
                },
                decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
              ),
        actions: [
          IconButton(
            onPressed: () {
              BlocProvider.of<HomeBloc>(context).add(ToggleSearchModeEvent());
            },
            icon: Icon(isSearching ? Icons.close : Icons.search),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 25,
              itemBuilder: (context, i) {
                return const ListTileWidget(
                  icon: Icon(Icons.more_vert),
                );
              },
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            left: 0,
            child: Container(
              color: Colors.grey[700],
              child: const ListTileWidget(
                icon: Icon(Icons.pause_circle),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
