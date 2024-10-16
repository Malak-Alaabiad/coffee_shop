import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors{
  static const Color primaryColor = Color(0xFFC67C4E);
  static const Color secondaryColor = Color(0xFFEDD6C8);
  static const Color fontLight = Color(0xFF313131);
  static const Color textColor = Color(0xFFE3E3E3);
  static const Color ofWhiteColor = Color(0xFFF9F2ED);
  static const Color darkBackgroundColor = Color(0xFF0C0F14);
  static const Color darkHoverColor = Color(0xFF1C2127);
  static const Color darkHeadline = Color(0xFFEAEBEC);
  static const Color darkTextSmall =Color(0xffCFCFCF);
  static const Color lightBackgroundColor = Color(0xFFF9F9F9);
  static const Color lightHoverColor = Color(0xFFFFFFFF);
  static const Color lightHeadline = Color(0xFF242424);
  static const Color lightTextSmall =Color(0xffA2A2A2);
  /////////////////////////////////////////////////////////////////
  
}

class MyThemeData {
  static final ThemeData light = ThemeData(
    textTheme: TextTheme(
    
      titleLarge:GoogleFonts.sora(
            color: AppColors.lightHeadline,
            fontSize: 18,
            fontWeight: FontWeight.w600) ,
            
      titleSmall: GoogleFonts.sora(
            color: AppColors.lightTextSmall,
            fontSize: 12,
            fontWeight: FontWeight.w400),),
colorScheme: const ColorScheme(brightness: Brightness.light, primary: AppColors.primaryColor, onPrimary: Colors.white, secondary: AppColors.lightHoverColor, onSecondary: AppColors.lightTextSmall, error: Colors.red, onError: Colors.white, surface: AppColors.lightBackgroundColor, onSurface: AppColors.lightTextSmall)  );
        

  
  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,
    textTheme: TextTheme(
    
      titleLarge:GoogleFonts.sora(
            color: AppColors.darkHeadline,
            fontSize: 18,
            fontWeight: FontWeight.w600) ,
            
      titleSmall: GoogleFonts.sora(
            color: AppColors.darkTextSmall,
            fontSize: 12,
            fontWeight: FontWeight.w400),),

colorScheme: const ColorScheme(brightness: Brightness.dark, primary: AppColors.primaryColor, onPrimary: Colors.white, secondary: AppColors.darkHoverColor, onSecondary: AppColors.darkTextSmall, error: Colors.red, onError: Colors.white, surface: AppColors.darkBackgroundColor, onSurface: AppColors.darkTextSmall)  );
}