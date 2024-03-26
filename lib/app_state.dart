import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _defaultTsunagariIcon =
          prefs.getString('ff_defaultTsunagariIcon') ?? _defaultTsunagariIcon;
    });
    _safeInit(() {
      _defaultTsunagariBGImage =
          prefs.getString('ff_defaultTsunagariBGImage') ??
              _defaultTsunagariBGImage;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_temporalTsunagariData')) {
        try {
          final serializedData =
              prefs.getString('ff_temporalTsunagariData') ?? '{}';
          _temporalTsunagariData =
              TsunagarisStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _defaultTsunagariIcon =
      'https://images.unsplash.com/photo-1510771463146-e89e6e86560e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOHx8ZG9nfGVufDB8fHx8MTcxMDkxMjQ4MHww&ixlib=rb-4.0.3&q=80&w=1080';
  String get defaultTsunagariIcon => _defaultTsunagariIcon;
  set defaultTsunagariIcon(String value) {
    _defaultTsunagariIcon = value;
    prefs.setString('ff_defaultTsunagariIcon', value);
  }

  String _defaultTsunagariBGImage =
      'https://images.unsplash.com/photo-1510771463146-e89e6e86560e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwxOHx8ZG9nfGVufDB8fHx8MTcxMDkxMjQ4MHww&ixlib=rb-4.0.3&q=80&w=1080';
  String get defaultTsunagariBGImage => _defaultTsunagariBGImage;
  set defaultTsunagariBGImage(String value) {
    _defaultTsunagariBGImage = value;
    prefs.setString('ff_defaultTsunagariBGImage', value);
  }

  TsunagarisStruct _temporalTsunagariData = TsunagarisStruct();
  TsunagarisStruct get temporalTsunagariData => _temporalTsunagariData;
  set temporalTsunagariData(TsunagarisStruct value) {
    _temporalTsunagariData = value;
    prefs.setString('ff_temporalTsunagariData', value.serialize());
  }

  void updateTemporalTsunagariDataStruct(Function(TsunagarisStruct) updateFn) {
    updateFn(_temporalTsunagariData);
    prefs.setString(
        'ff_temporalTsunagariData', _temporalTsunagariData.serialize());
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
