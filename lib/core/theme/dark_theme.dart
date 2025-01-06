import 'package:caffely/core/theme/color_extension.dart';
import 'package:caffely/core/theme/space_extension.dart';
import 'package:caffely/core/theme/typography_extension.dart';
import 'package:flutter/material.dart';

final darktheme = ThemeData(
  extensions: [
    ColorExtension(
        primary: const Color(0xFFFFFFFF),
        secondry: const Color(0xFF212121),
        subtextclr: const Color(0xFFeeeeee),
        buttonclr: const Color(0xFF00AF66),
        subbuttonclr: const Color(0xFFbaead6),
        errorclr: const Color(0xFFf85757),
        subtxtclrbold: const Color(0xffc4c4c4)),
    AppSpaceExtension.fromBaseSpace(8),
    AppTypographyExtension(
      h100: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFFADB1CC),
      ),
      h200: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
      buttontext: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFFFFFFFF),
      ),
      buttonsubtext: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Color(0xFF00AF66),
      ),
      bodybold: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      bodynormal: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        color: Color(0xFFADB1CC),
      ),
      buttontextbold: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color(0xFFADB1CC),
      ),
      textfieldbody: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Color(0xFF212121),
      ),
      textfieldboldbody: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Color(0xFF212121),
      ),
      body: const TextStyle(
        fontSize: 16,
        color: Color(0xFFADB1CC),
      ),
      largebuttontext: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Color(0xFFADB1CC),
      ),
      bodynormalthin: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Color(0xFFADB1CC),
      ),
      offertext: const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFFFFFF),
      ),
      smalloffertext: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFFFFFF),
      ),
      smallbody: const TextStyle(
        fontSize: 14,
        color: Color(0xFFFFFFFF),
      ),
      subsmallbody: const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w700,
        color: Color(0xFF00AF66),
      ),
      smallboldbody: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFFFFFF),
      ),
      errortextnormal: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Color(0xFFADB1CC),
      ),
    ),
  ],
);
