import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  bool _glutenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
          child: ListView(
        children: [
          SwitchListTile(
            title: Text("Gluten-free"),
            subtitle: Text("Only include gluten-free meals"),
            value: _glutenFree,
            onChanged: (newValue) {
              setState(() {
                _glutenFree = newValue;
              });
            },
          )
        ],
      )),
    );
  }
}
