import 'package:flutter/material.dart';
import 'custom_button_styles.dart';

extension ButtonThemeAccess on ThemeData {
  CustomButtonStyles get buttonStyles => extension<CustomButtonStyles>()!;
}
