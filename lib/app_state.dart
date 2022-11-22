import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'flutter_flow/lat_lng.dart';

class FFAppState {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    _mascotaimg = await secureStorage.getString('ff_mascotaimg') ?? _mascotaimg;
    _nombreMascota =
        await secureStorage.getString('ff_nombreMascota') ?? _nombreMascota;
    _horaDesayuno =
        await secureStorage.getInt('ff_horaDesayuno') ?? _horaDesayuno;
    _countIdAnimo =
        await secureStorage.getInt('ff_countIdAnimo') ?? _countIdAnimo;
  }

  late FlutterSecureStorage secureStorage;

  String _mascotaimg = '';
  String get mascotaimg => _mascotaimg;
  set mascotaimg(String _value) {
    _mascotaimg = _value;
    secureStorage.setString('ff_mascotaimg', _value);
  }

  void deleteMascotaimg() {
    secureStorage.delete(key: 'ff_mascotaimg');
  }

  String _nombreMascota = '';
  String get nombreMascota => _nombreMascota;
  set nombreMascota(String _value) {
    _nombreMascota = _value;
    secureStorage.setString('ff_nombreMascota', _value);
  }

  void deleteNombreMascota() {
    secureStorage.delete(key: 'ff_nombreMascota');
  }

  String idAnimo = '';

  String estadoanimo = '';

  int _horaDesayuno = 0;
  int get horaDesayuno => _horaDesayuno;
  set horaDesayuno(int _value) {
    _horaDesayuno = _value;
    secureStorage.setInt('ff_horaDesayuno', _value);
  }

  void deleteHoraDesayuno() {
    secureStorage.delete(key: 'ff_horaDesayuno');
  }

  int numeroemergencia = 0;

  int _countIdAnimo = 0;
  int get countIdAnimo => _countIdAnimo;
  set countIdAnimo(int _value) {
    _countIdAnimo = _value;
    secureStorage.setInt('ff_countIdAnimo', _value);
  }

  void deleteCountIdAnimo() {
    secureStorage.delete(key: 'ff_countIdAnimo');
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await write(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await write(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await write(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await write(key: key, value: value.toString());

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
      await write(key: key, value: ListToCsvConverter().convert([value]));
}
