// Copyright 2018 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

// To keep your imports tidy, follow the ordering guidelines at
// https://www.dartlang.org/guides/language/effective-dart/style#ordering
import 'package:flutter/material.dart';

/// A custom [Category] widget.
///
/// The widget is composed on an [Icon] and [Text]. Tapping on the widget shows
/// a colored [InkWell] animation.
class Category extends StatelessWidget {
  final categoryName;
  final categoryIcon;
  final categoryColor;

  /// Creates a [Category].
  ///
  /// A [Category] saves the name of the Category (e.g. 'Length'), its color for
  /// the UI, and the icon that represents it (e.g. a ruler).
  //[X] TODO: You'll need the name, color, and iconLocation from main.dart
  const Category(this.categoryIcon, this.categoryColor, this.categoryName);

  /// Builds a custom widget that shows [Category] information.
  ///
  /// This information includes the icon, name, and color for the [Category].
  @override
  // This `context` parameter describes the location of this widget in the
  // widget tree. It can be used for obtaining Theme data from the nearest
  // Theme ancestor in the tree. Below, we obtain the display1 text theme.
  // See https://docs.flutter.io/flutter/material/Theme-class.html
  Widget build(BuildContext context) {
    // TODO: Build the custom widget here, referring to the Specs.
    return Material(
      color: Colors.transparent,
      child: Container(
        //Generates a normally a rectangle area.
        height: 100.0, //Obviously the height of the container
        child: InkWell(
          // Inkwell Effect
          borderRadius: BorderRadius.circular(50.0),
          // This creates the smooth circular edges
          highlightColor: this.categoryColor,
          splashColor: this.categoryColor,
          //This aggregates another color Ink effect in the Container

          onTap: () {
            print('I was fucked');
          },
          child: Padding(
            padding: EdgeInsets.all(8.0),
            // An immutable set of offsets in each of the four cardinal directions.
            child: Row(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, //Require the children to fill the cross axis
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Icon(
                    this.categoryIcon, // Icon object
                    size: 60.0, // Wished Size of icon
                  ),
                ),
                Center(
                  child: Text(
                    this.categoryName,
                    textAlign:TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
