import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _icomoonFamily = 'Icomoon';
  static const String _cleanFamily = 'Clean';
  static const String _iconFamily = 'Icon';

  // icomoon
  static const IconData kflowerHigh =
      IconData(0xe900, fontFamily: _icomoonFamily);
  static const IconData kflowerLow =
      IconData(0xe901, fontFamily: _icomoonFamily);
  static const IconData kflowerMiddle =
      IconData(0xe902, fontFamily: _icomoonFamily);

  // clean
  static const IconData kclean = IconData(0xe900, fontFamily: _cleanFamily);

  // icon
  static const IconData kiconTrash = IconData(0xe900, fontFamily: _iconFamily);
  static const IconData kvector = IconData(0xe901, fontFamily: _iconFamily);
  static const IconData kicon = IconData(0xe902, fontFamily: _iconFamily);
}
