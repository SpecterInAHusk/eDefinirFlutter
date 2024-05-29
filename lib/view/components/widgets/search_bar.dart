import 'package:flutter/material.dart';

class CustomSearchBar extends StatefulWidget {
  @override
  _CustomSearchBarState createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      // Add padding around the search bar
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      // Use a Material design search bar
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          hintText: 'Search...',
          // Add a clear button to the search bar
          suffixIcon: IconButton(
            icon: Icon(Icons.clear, color: Colors.black,),
            onPressed: () => _searchController.clear(),
          ),
          // Add a search icon or button to the search bar
          prefixIcon: IconButton(
            icon: Icon(Icons.search, color: Colors.black,),
            onPressed: () {
              // Perform the search here
            },
          ),
          // border: OutlineInputBorder(
          //   borderRadius: BorderRadius.circular(20.0),
          // ),
        ),
      ),
    );
  }
}
