import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

import '../constraints/app_color.dart';

TextStyle addressStyle() {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 16.0,
      color: const Color(0xFF9F9F9F));
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle hintStyle() {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 15.0,
      color: const Color(0xFF9F9F9F));
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle headingStyle() {
  return GoogleFonts.roboto(
      fontWeight: FontWeight.w500, fontSize: 16.0, color: mHeadingColor);
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle vieAllStyle() {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      color: mActiveColor,
      decoration: TextDecoration.underline);
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle menuTitleStyle() {
  return GoogleFonts.poppins(
    fontWeight: FontWeight.w700,
    fontSize: 16.0,
    color: const Color(0xFF2E2E2E),
  );
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle subTitleStyle() {
  return GoogleFonts.poppins(
    fontWeight: FontWeight.w500,
    fontSize: 12.0,
    color: mSubTitleColor,
  );
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle discountStyle() {
  return GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 14.0,
      color: mDiscountColor,
      decoration: TextDecoration.lineThrough);
  //const TextStyle(fontSize: 12.0, color: Color(0xFF9F9F9F));
}

TextStyle menuItemStyle() => GoogleFonts.roboto(
    fontSize: 16.0, color: mHeading, fontWeight: FontWeight.w500);

TextStyle subMenuItemStyle() => GoogleFonts.roboto(
    color: mIconColor, fontSize: 15.0, fontWeight: FontWeight.w400);
