import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  final TextEditingController _searchController = TextEditingController();
  final bool _isSearching = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 241, 236, 233),
          borderRadius: BorderRadius.circular(100)),
      child: ListTile(
        leading: _isSearching
            ? IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  // setState(() {
                  //   _isSearching = false;
                  //   _searchController.clear();
                  // });
                },
              )
            : IconButton(
                icon: const Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 143, 138, 135),
                ),
                onPressed: () {
                  // setState(() {
                  //   _isSearching = true;
                  // });
                },
              ),
        title: _isSearching
            ? TextField(
                controller: _searchController,
                decoration: const InputDecoration(
                  hintText: 'Search',
                  border: InputBorder.none,
                ),
                onChanged: (value) {
                  // TODO: filtrer les résultats ici
                },
              )
            : const Text('Search'),
        trailing: Container(
          child: Image.asset("assets/images/Filter.png"),
        ),
      ),
    );
  }
}
