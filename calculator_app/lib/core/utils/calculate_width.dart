import 'package:calculator_app/core/constants/app_breakpoints.dart';

double calculateWidth(double screenWidth) {
  if (screenWidth >= AppBreakpoints.bkpTablet) {
    return AppBreakpoints.containerWMax;
  } else if (screenWidth <= AppBreakpoints.bkpMobile) {
    return AppBreakpoints.containerWMin;
  }

  return screenWidth * 0.9;
}
