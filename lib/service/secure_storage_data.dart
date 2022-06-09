
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorageData{

  bool toBoolean(String str, [bool strict = false]) {
    if (strict == true) {
      return str == '1' || str == 'true';
    }
    return str != '0' && str != 'false' && str != '';
  }

  final _storage = const FlutterSecureStorage();
  static const _fullName = 'full_name';
  static const _token = 'token';
  static const _mobileNumber = 'mobile_number';
  static const _userId = 'userId';
  static const _isScubscriptionComplete = 'isScubscriptionComplete';


  Future<String?> getFullName() async {
    try {
      return await _storage.read(key: _fullName);
    } on Exception catch (e) {
      return e.toString();
    }
  }

  Future<void> setFullName(String? fullname) async {
    try {
      return await _storage.write(key: _fullName, value: fullname);
    } on Exception catch (e) {
      return;
    }
  }

  Future<String?> getMobileNumber() async {
    try {
      return await _storage.read(key: _mobileNumber);
    } on Exception catch (e) {
      return e.toString();
    }
  }

  Future<void> setMobileNumber(String? mobilenumber) async {
    try {
      return await _storage.write(key: _mobileNumber, value: mobilenumber);
    } on Exception catch (e) {
      return;
    }
  }

  Future<String?> getToken() async {
    try {
      return await _storage.read(key: _token);
    } on Exception catch (e) {
      return e.toString();
    }
  }

  Future<void> setToken(String? token) async {
    try {
      return await _storage.write(key: _token, value: token);
    } on Exception catch (e) {
      return;
    }
  }

  Future<int?> getUserId() async {
    try {
      String? userId = await _storage.read(key: _userId);
      return int.parse(userId!);
    } on Exception catch (e) {
      return 0;
    }
  }

  Future<void> setUserId(int? userId) async {
    try {
      return await _storage.write(key: _userId, value: '$userId');
    } on Exception catch (e) {
      return;
    }
  }

  Future<bool?> getScubscriptionCompleted() async {
    try {
      String? isScubscriptionComplete =
      await _storage.read(key: _isScubscriptionComplete);
      return toBoolean(isScubscriptionComplete!);
    } on Exception catch (e) {
      return false;
    }
  }

  Future<void> setScubscriptionCompleted(bool? isScubscriptionComplete) async {
    try {
      return await _storage.write(
          key: _isScubscriptionComplete, value: '$isScubscriptionComplete');
    } on Exception catch (e) {
      return;
    }
  }
}