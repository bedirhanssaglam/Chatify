import 'package:permission_handler/permission_handler.dart';

final class BasePermission {
  Future<bool> checkAndRequestPermission(Permission permission) async {
    final status = await permission.status;
    if (status.isDenied) {
      final result = await permission.request();
      return result.isGranted;
    }
    return status.isGranted;
  }
}
