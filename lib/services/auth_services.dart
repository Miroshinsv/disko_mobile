import 'package:disko_app/entities/xtoken/XTokenEntity.dart';
import 'package:disko_app/services/storage_services.dart';
import 'package:get/get.dart';

class AuthorizeService extends GetxService {
  static XTokenEntity? _tokenEntity;
  XTokenEntity? get getXTokenEntity => _tokenEntity;
  static late StorageService _storageService;

  @override
  void onInit() {
    _storageService =  Get.find<StorageService>();
    super.onInit();
  }

  void refreshXToken(XTokenEntity entity) {
    _tokenEntity = entity;
    _storageService.saveXToken(entity);
  }
}
