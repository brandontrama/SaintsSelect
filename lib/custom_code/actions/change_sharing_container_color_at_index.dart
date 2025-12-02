// Automatic FlutterFlow imports
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<Color>> changeSharingContainerColorAtIndex(
  List<Color> sharingColors,
  int index,
) async {
  // Create a new list to ensure FlutterFlow detects the change
  List<Color> newColors = List.from(sharingColors);

  // Toggle the color at the specific index
  if (index >= 0 && index < newColors.length) {
    // If it's already yellow, change back to white, otherwise change to yellow
    if (newColors[index] == Color(0xFFffc423)) {
      newColors[index] = Colors.white;
    } else {
      newColors[index] = Color(0xFFffc423);
    }
  }

  return newColors;
}
