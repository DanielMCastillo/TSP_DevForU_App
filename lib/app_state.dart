import 'package:shared_preferences/shared_preferences.dart';
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
    prefs = await SharedPreferences.getInstance();
    _mascotaimg = prefs.getString('ff_mascotaimg') ?? _mascotaimg;
    _nombreMascota = prefs.getString('ff_nombreMascota') ?? _nombreMascota;
  }

  late SharedPreferences prefs;

  String _mascotaimg = '';
  String get mascotaimg => _mascotaimg;
  set mascotaimg(String _value) {
    _mascotaimg = _value;
    prefs.setString('ff_mascotaimg', _value);
  }

  String _nombreMascota = '';
  String get nombreMascota => _nombreMascota;
  set nombreMascota(String _value) {
    _nombreMascota = _value;
    prefs.setString('ff_nombreMascota', _value);
  }

  String idAnimo = '';

  String estadoanimo = '';
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
