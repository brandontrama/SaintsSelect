import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _hobbyColors = (await secureStorage.getStringList('ff_hobbyColors'))
              ?.map((x) => Color(int.tryParse(x) ?? 0))
              .toList() ??
          _hobbyColors;
    });
    await _safeInitAsync(() async {
      _musicColors = (await secureStorage.getStringList('ff_musicColors'))
              ?.map((x) => Color(int.tryParse(x) ?? 0))
              .toList() ??
          _musicColors;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

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
    secureStorage.setStringList(
        'ff_hobbyColors', value.map((x) => x.value.toString()).toList());
  }

  void deleteHobbyColors() {
    secureStorage.delete(key: 'ff_hobbyColors');
  }

  void addToHobbyColors(Color value) {
    hobbyColors.add(value);
    secureStorage.setStringList(
        'ff_hobbyColors', _hobbyColors.map((x) => x.value.toString()).toList());
  }

  void removeFromHobbyColors(Color value) {
    hobbyColors.remove(value);
    secureStorage.setStringList(
        'ff_hobbyColors', _hobbyColors.map((x) => x.value.toString()).toList());
  }

  void removeAtIndexFromHobbyColors(int index) {
    hobbyColors.removeAt(index);
    secureStorage.setStringList(
        'ff_hobbyColors', _hobbyColors.map((x) => x.value.toString()).toList());
  }

  void updateHobbyColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    hobbyColors[index] = updateFn(_hobbyColors[index]);
    secureStorage.setStringList(
        'ff_hobbyColors', _hobbyColors.map((x) => x.value.toString()).toList());
  }

  void insertAtIndexInHobbyColors(int index, Color value) {
    hobbyColors.insert(index, value);
    secureStorage.setStringList(
        'ff_hobbyColors', _hobbyColors.map((x) => x.value.toString()).toList());
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
    secureStorage.setStringList(
        'ff_musicColors', value.map((x) => x.value.toString()).toList());
  }

  void deleteMusicColors() {
    secureStorage.delete(key: 'ff_musicColors');
  }

  void addToMusicColors(Color value) {
    musicColors.add(value);
    secureStorage.setStringList(
        'ff_musicColors', _musicColors.map((x) => x.value.toString()).toList());
  }

  void removeFromMusicColors(Color value) {
    musicColors.remove(value);
    secureStorage.setStringList(
        'ff_musicColors', _musicColors.map((x) => x.value.toString()).toList());
  }

  void removeAtIndexFromMusicColors(int index) {
    musicColors.removeAt(index);
    secureStorage.setStringList(
        'ff_musicColors', _musicColors.map((x) => x.value.toString()).toList());
  }

  void updateMusicColorsAtIndex(
    int index,
    Color Function(Color) updateFn,
  ) {
    musicColors[index] = updateFn(_musicColors[index]);
    secureStorage.setStringList(
        'ff_musicColors', _musicColors.map((x) => x.value.toString()).toList());
  }

  void insertAtIndexInMusicColors(int index, Color value) {
    musicColors.insert(index, value);
    secureStorage.setStringList(
        'ff_musicColors', _musicColors.map((x) => x.value.toString()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
