// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'category.dart';

// TODO: Check if we need to import anything

// TODO:[X] Define any constants
const PI=3.14;
/// Category Route (screen).
///
///
/// This is the 'home' screen of the Unit Converter. It shows a header and
/// a list of [Categories].
///
/// While it is named CategoryRoute, a more apt name would be CategoryScreen,
/// because it is responsible for the UI at the route's destination.
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  @override
  Widget build(BuildContext context) {
//  TODO: [X] Create a list of the eight Categories, using the names and colors.
    final category_list =<Category>[]; // Here we declare the list of categories.

    for(var i = 0; i < _baseColors.length; i++) {
      var nw_category = Category(
        name: _categoryNames[i],
        color: _baseColors[i],
        iconLocation: Icons.airplay,
      );
      category_list.add(nw_category);
    }

    // from above. Use a placeholder icon, such as `Icons.cake` for each
    // Category. We'll add custom icons later.

    // TODO: Create a list view of the Categories
    final listView = Container(
      color: Colors.lightGreen,
      padding: EdgeInsets.all(3.0),
      child: ListView.builder(
          itemCount: category_list.length,
          itemBuilder: (BuildContext ctxt, int index)=>category_list[index]
      ),
    );
    
    //TODO:[X] Create an App Bar
    final appBar = AppBar(
      title: Text(
          'Unit Converter',
        style: TextStyle(
          color: Colors.black,
          fontSize: 30.0
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.blueAccent,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
