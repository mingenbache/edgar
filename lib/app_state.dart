import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _currentPage = 'Home';
  String get currentPage => _currentPage;
  set currentPage(String _value) {
    _currentPage = _value;
  }

  int _ProductPageviewIndex = 1;
  int get ProductPageviewIndex => _ProductPageviewIndex;
  set ProductPageviewIndex(int _value) {
    _ProductPageviewIndex = _value;
  }

  int _UXPageviewIndex = 1;
  int get UXPageviewIndex => _UXPageviewIndex;
  set UXPageviewIndex(int _value) {
    _UXPageviewIndex = _value;
  }

  int _brandingPageViewIndex = 1;
  int get brandingPageViewIndex => _brandingPageViewIndex;
  set brandingPageViewIndex(int _value) {
    _brandingPageViewIndex = _value;
  }

  int _threeDpageViewIndex = 1;
  int get threeDpageViewIndex => _threeDpageViewIndex;
  set threeDpageViewIndex(int _value) {
    _threeDpageViewIndex = _value;
  }

  bool _showmobileMenu = false;
  bool get showmobileMenu => _showmobileMenu;
  set showmobileMenu(bool _value) {
    _showmobileMenu = _value;
  }

  String _projectitemview = 'products';
  String get projectitemview => _projectitemview;
  set projectitemview(String _value) {
    _projectitemview = _value;
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
