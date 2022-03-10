import 'package:disko_app/entities/xtoken/XTokenEntity.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageService extends GetxService {
  late GetStorage _storage;
  static const String _XTOKEN_KEY = 'x-token';

  Future<StorageService> init() async {
    await GetStorage.init();
    _storage = GetStorage();
    return this;
  }

  XTokenEntity? getXTokenEntity() {
    return _storage.read(_XTOKEN_KEY);
  }

  void saveXToken(XTokenEntity tokenEntity) {
    _storage.write(_XTOKEN_KEY, tokenEntity);
  }
}
