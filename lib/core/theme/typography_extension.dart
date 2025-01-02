import 'package:flutter/material.dart';

class AppTypographyExtension extends ThemeExtension<AppTypographyExtension> {
  final TextStyle h100;
  final TextStyle h200;
  final TextStyle body;
  final TextStyle buttontext;
  final TextStyle buttonsubtext;
  final TextStyle bodybold;
  final TextStyle bodynormal;
  final TextStyle buttontextbold;
  final TextStyle textfieldbody;
  final TextStyle textfieldboldbody;
  final TextStyle largebuttontext;
  final TextStyle bodynormalthin;
  final TextStyle offertext;
  final TextStyle smalloffertext;
  final TextStyle smallbody;
  final TextStyle subsmallbody;
  final TextStyle smallboldbody;
  final TextStyle errortextnormal;

  AppTypographyExtension({required this.h100, required this.h200, required this.body, required this.buttontext, required this.buttonsubtext, required this.bodybold, required this.bodynormal, required this.buttontextbold, required this.textfieldbody, required this.textfieldboldbody, required this.largebuttontext, required this.bodynormalthin, required this.offertext, required this.smalloffertext, required this.smallbody, required this.subsmallbody, required this.smallboldbody, required this.errortextnormal});
  
 @override
  ThemeExtension<AppTypographyExtension> lerp(
      covariant ThemeExtension<AppTypographyExtension>? other, double t) {
    if (other is! AppTypographyExtension) {
      return this;
    }
    return AppTypographyExtension(
      body: TextStyle.lerp(body, other.body, t)!,
      h100: TextStyle.lerp(h100, other.h100, t)!,
      h200: TextStyle.lerp(h200, other.h200, t)!,
      buttontext: TextStyle.lerp(buttontext, other.buttontext, t)!,
      buttonsubtext: TextStyle.lerp(buttonsubtext, other.buttonsubtext, t)!,
      bodybold: TextStyle.lerp(bodybold, other.bodybold, t)!,
      bodynormal: TextStyle.lerp(bodynormal, other.bodynormal, t)!,
      buttontextbold: TextStyle.lerp(buttontextbold, other.buttontextbold, t)!,
      textfieldbody: TextStyle.lerp(textfieldbody, other.textfieldbody, t)!,
      textfieldboldbody: TextStyle.lerp(textfieldboldbody, other.textfieldboldbody, t)!,
      largebuttontext: TextStyle.lerp(largebuttontext, other.largebuttontext, t)!,
      bodynormalthin: TextStyle.lerp(bodynormalthin, other.bodynormalthin, t)!,
      offertext: TextStyle.lerp(offertext, other.offertext, t)!,
      smalloffertext: TextStyle.lerp(smalloffertext, other.smalloffertext, t)!,
      smallbody: TextStyle.lerp(smallbody, other.smallbody, t)!,
      subsmallbody: TextStyle.lerp(subsmallbody, other.subsmallbody, t)!,
      smallboldbody: TextStyle.lerp(smallboldbody, other.smallboldbody, t)!,
      errortextnormal: TextStyle.lerp(errortextnormal, other.errortextnormal, t)!,
    );
  }

  
  @override
  AppTypographyExtension copyWith({
   TextStyle? h100,
   TextStyle? h200,
   TextStyle? body,
   TextStyle? buttontext,
   TextStyle? buttonsubtext,
   TextStyle? bodybold,
   TextStyle? bodynormal,
   TextStyle? buttontextbold,
   TextStyle? textfieldbody,
   TextStyle? textfieldboldbody,
   TextStyle? largebuttontext,
   TextStyle? bodynormalthin,
   TextStyle? offertext,
   TextStyle? smalloffertext,
   TextStyle? smallbody,
   TextStyle? subsmallbody,
   TextStyle? smallboldbody,
   TextStyle? errortextnormal,
  }) {
    return AppTypographyExtension(
      h100: h100 ?? this.h100,
      h200: h200 ?? this.h200,
      body: body ?? this.body,
      buttontext: buttontext ?? this.buttontext,
      buttonsubtext: buttonsubtext ?? this.buttonsubtext,
      bodybold: bodybold ?? this.bodybold,
      bodynormal: bodynormal ?? this.bodynormal,
      buttontextbold: buttontextbold ?? this.buttontextbold,
      textfieldbody: textfieldbody ?? this.textfieldbody,
      textfieldboldbody: textfieldboldbody ?? this.textfieldboldbody,
      largebuttontext: largebuttontext ?? this.largebuttontext,
      bodynormalthin: bodynormalthin ?? this.bodynormalthin,
      offertext: offertext ?? this.offertext,
      smalloffertext: smalloffertext ?? this.smalloffertext,
      smallbody: smallbody ?? this.smallbody,
      subsmallbody: subsmallbody ?? this.subsmallbody,
      smallboldbody: smallboldbody ?? this.smallboldbody,
      errortextnormal: errortextnormal ?? this.errortextnormal,
);
}


  
}
