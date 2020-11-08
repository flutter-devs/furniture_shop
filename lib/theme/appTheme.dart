import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData darktheme() {
  return ThemeData(
    brightness: Brightness.dark,
    // scaffoldBackgroundColor: Color(0xff242a37),
    textTheme: TextTheme(
        headline4: GoogleFonts.nunito(
            fontWeight: FontWeight.bold, color: Color(0xffF1F2F6)),
        headline5: GoogleFonts.nunito(
            fontWeight: FontWeight.w300, color: Color(0xffF9C678)),
        headline6: GoogleFonts.nunito(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Color(0xffF1F2F6)),
        button: GoogleFonts.nunito(color: Colors.white)),
  );
}

ThemeData lighttheme() {
  return ThemeData(
    brightness: Brightness.light,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      brightness: Brightness.light,
      iconTheme: IconThemeData(color: Colors.black),
    ),
    scaffoldBackgroundColor: Colors.white,
    // Color(0xffF1F2F6)
    textTheme: TextTheme(
        headline3: GoogleFonts.nunito(
            fontWeight: FontWeight.bold, color: Color(0xff242a37)),
        headline4: GoogleFonts.nunito(
            fontWeight: FontWeight.bold, color: Color(0xff242a37)),
        headline5: GoogleFonts.nunito(
            fontWeight: FontWeight.w300, color: Color(0xffF9C678)),
        headline6: GoogleFonts.nunito(
            fontSize: 17,
            fontWeight: FontWeight.w600,
            color: Color(0xff242a37)),
        bodyText1:
            GoogleFonts.nunito(fontWeight: FontWeight.bold, fontSize: 18),
        caption: GoogleFonts.nunito(fontSize: 13),
        button: GoogleFonts.nunito(fontWeight: FontWeight.w600, fontSize: 16)),
    buttonColor: Colors.black,
    // chipTheme: ChipThemeData(backgroundColor: Colors.transparent),
    buttonTheme: ButtonThemeData(height: 50),
  );
}
