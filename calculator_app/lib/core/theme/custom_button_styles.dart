import 'package:flutter/material.dart';

// class CustomButtonStyles extends ThemeExtension<CustomButtonStyles> {
//   final ButtonStyle button1;
//   final ButtonStyle button2;
//   final ButtonStyle button3;

//   const CustomButtonStyles({
//     required this.button1,
//     required this.button2,
//     required this.button3,
//   });

//   @override
//   CustomButtonStyles copyWith({
//     ButtonStyle? button1,
//     ButtonStyle? button2,
//     ButtonStyle? button3,
//   }) {
//     return CustomButtonStyles(
//       button1: button1 ?? this.button1,
//       button2: button2 ?? this.button2,
//       button3: button3 ?? this.button3,
//     );
//   }

//   @override
//   CustomButtonStyles lerp(ThemeExtension<CustomButtonStyles>? other, double t) {
//     if (other is! CustomButtonStyles) return this;
//     return this;
//   }
// }

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
