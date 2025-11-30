import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<Color> _hobbyColors = [
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295)
  ];
  List<Color> get hobbyColors => _hobbyColors;
  set hobbyColors(List<Color> value) {
    _hobbyColors = value;
  }

  void addToHobbyColors(Color value) {
    hobbyColors.add(value);
  }

  void removeFromHobbyColors(Color value) {
    hobbyColors.remove(value);
  }

  void removeAtIndexFromHobbyColors(int index) {
    hobbyColors.removeAt(index);
  }

  void updateHobbyColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    hobbyColors[index] = updateFn(_hobbyColors[index]);
  }

  void insertAtIndexInHobbyColors(int index, Color value) {
    hobbyColors.insert(index, value);
  }

  List<Color> _musicColors = [
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295)
  ];
  List<Color> get musicColors => _musicColors;
  set musicColors(List<Color> value) {
    _musicColors = value;
  }

  void addToMusicColors(Color value) {
    musicColors.add(value);
  }

  void removeFromMusicColors(Color value) {
    musicColors.remove(value);
  }

  void removeAtIndexFromMusicColors(int index) {
    musicColors.removeAt(index);
  }

  void updateMusicColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    musicColors[index] = updateFn(_musicColors[index]);
  }

  void insertAtIndexInMusicColors(int index, Color value) {
    musicColors.insert(index, value);
  }

  List<String> _currentPhrase = [
    'ONE MOMENT WHILE YOUR PROFILE IS BEING CREATED...',
    '...YOUR ROOMMATE MATCHES ARE ON THE WAY!'
  ];
  List<String> get currentPhrase => _currentPhrase;
  set currentPhrase(List<String> value) {
    _currentPhrase = value;
  }

  void addToCurrentPhrase(String value) {
    currentPhrase.add(value);
  }

  void removeFromCurrentPhrase(String value) {
    currentPhrase.remove(value);
  }

  void removeAtIndexFromCurrentPhrase(int index) {
    currentPhrase.removeAt(index);
  }

  void updateCurrentPhraseAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    currentPhrase[index] = updateFn(_currentPhrase[index]);
  }

  void insertAtIndexInCurrentPhrase(int index, String value) {
    currentPhrase.insert(index, value);
  }

  int _currentPhraseIndex = 0;
  int get currentPhraseIndex => _currentPhraseIndex;
  set currentPhraseIndex(int value) {
    _currentPhraseIndex = value;
  }

  List<String> _allergyChoice = ['YES', 'NO'];
  List<String> get allergyChoice => _allergyChoice;
  set allergyChoice(List<String> value) {
    _allergyChoice = value;
  }

  void addToAllergyChoice(String value) {
    allergyChoice.add(value);
  }

  void removeFromAllergyChoice(String value) {
    allergyChoice.remove(value);
  }

  void removeAtIndexFromAllergyChoice(int index) {
    allergyChoice.removeAt(index);
  }

  void updateAllergyChoiceAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    allergyChoice[index] = updateFn(_allergyChoice[index]);
  }

  void insertAtIndexInAllergyChoice(int index, String value) {
    allergyChoice.insert(index, value);
  }

  int _onTapCount = 0;
  int get onTapCount => _onTapCount;
  set onTapCount(int value) {
    _onTapCount = value;
  }

  List<Color> _itemsColors = [
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295)
  ];
  List<Color> get itemsColors => _itemsColors;
  set itemsColors(List<Color> value) {
    _itemsColors = value;
  }

  void addToItemsColors(Color value) {
    itemsColors.add(value);
  }

  void removeFromItemsColors(Color value) {
    itemsColors.remove(value);
  }

  void removeAtIndexFromItemsColors(int index) {
    itemsColors.removeAt(index);
  }

  void updateItemsColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    itemsColors[index] = updateFn(_itemsColors[index]);
  }

  void insertAtIndexInItemsColors(int index, Color value) {
    itemsColors.insert(index, value);
  }

  List<Color> _sharingColors = [
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295)
  ];
  List<Color> get sharingColors => _sharingColors;
  set sharingColors(List<Color> value) {
    _sharingColors = value;
  }

  void addToSharingColors(Color value) {
    sharingColors.add(value);
  }

  void removeFromSharingColors(Color value) {
    sharingColors.remove(value);
  }

  void removeAtIndexFromSharingColors(int index) {
    sharingColors.removeAt(index);
  }

  void updateSharingColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    sharingColors[index] = updateFn(_sharingColors[index]);
  }

  void insertAtIndexInSharingColors(int index, Color value) {
    sharingColors.insert(index, value);
  }

  List<Color> _housingColors = [
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295)
  ];
  List<Color> get housingColors => _housingColors;
  set housingColors(List<Color> value) {
    _housingColors = value;
  }

  void addToHousingColors(Color value) {
    housingColors.add(value);
  }

  void removeFromHousingColors(Color value) {
    housingColors.remove(value);
  }

  void removeAtIndexFromHousingColors(int index) {
    housingColors.removeAt(index);
  }

  void updateHousingColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    housingColors[index] = updateFn(_housingColors[index]);
  }

  void insertAtIndexInHousingColors(int index, Color value) {
    housingColors.insert(index, value);
  }

  List<Color> _hallColors = [
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295),
    Color(4294967295)
  ];
  List<Color> get hallColors => _hallColors;
  set hallColors(List<Color> value) {
    _hallColors = value;
  }

  void addToHallColors(Color value) {
    hallColors.add(value);
  }

  void removeFromHallColors(Color value) {
    hallColors.remove(value);
  }

  void removeAtIndexFromHallColors(int index) {
    hallColors.removeAt(index);
  }

  void updateHallColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    hallColors[index] = updateFn(_hallColors[index]);
  }

  void insertAtIndexInHallColors(int index, Color value) {
    hallColors.insert(index, value);
  }
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
