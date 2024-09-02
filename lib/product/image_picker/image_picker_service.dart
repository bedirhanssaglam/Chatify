// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:todo/product/image_picker/base_permission.dart';
import 'package:todo/product/init/localization/locale_keys.g.dart';
import 'package:todo/product/utility/extensions/string_extensions.dart';
import 'package:widget/widget.dart';

final class ImagePickerService {
  final BasePermission _permissionHandler = BasePermission();
  final ImagePicker _picker = ImagePicker();

  Future<XFile?> pickImage(BuildContext context) async {
    final hasPermission = await _permissionHandler.checkAndRequestPermission(Permission.photos);
    if (!hasPermission) {
      await ErrorDialog.show(
        context,
        title: LocaleKeys.dialog_logOut_title.locale,
        content: LocaleKeys.dialog_noGalleryPermission_pleaseAllowAccessToGallery.locale,
      );
    }
    return _picker.pickImage(source: ImageSource.gallery);
  }
}
