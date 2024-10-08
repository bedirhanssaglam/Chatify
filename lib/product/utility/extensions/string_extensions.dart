import 'package:easy_localization/easy_localization.dart';

extension StringExtensions on String {
  String get nameSurnameAvatar {
    final names = trim().split(' ');

    if (names.length >= 2) {
      final firstNameInitial = names.first[0];
      final lastNameInitial = names.last[0];
      return '$firstNameInitial$lastNameInitial';
    } else if (names.length == 1) {
      return names.first[0];
    } else {
      return '';
    }
  }

  String get locale => this.tr();
  String localeArgs(List<String> args) => this.tr(args: args);
}
