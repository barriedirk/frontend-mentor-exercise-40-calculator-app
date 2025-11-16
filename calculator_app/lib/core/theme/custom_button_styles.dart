import 'package:flutter/material.dart';

class CustomButtonStyles extends ThemeExtension<CustomButtonStyles> {
  final Map<String, ButtonStyle> buttons;

  const CustomButtonStyles({required this.buttons});

  ButtonStyle operator [](String key) => buttons[key]!;

  @override
  CustomButtonStyles copyWith({Map<String, ButtonStyle>? buttons}) {
    return CustomButtonStyles(buttons: buttons ?? this.buttons);
  }

  @override
  CustomButtonStyles lerp(ThemeExtension<CustomButtonStyles>? other, double t) {
    if (other is! CustomButtonStyles) return this;
    return this; // no animation needed
  }
}
