import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

final ColorScheme lightTheme = ColorScheme(
  primary: Colors.amber[700]!, // appBarの背景、ElevatedButtonの色など
  primaryVariant: Colors.amber[900]!,
  secondary: Colors.green[600]!, // FloatingActionButtonの色など
  secondaryVariant: Colors.green[800]!,
  surface: Colors.grey[200]!, // Cardの色など
  background: Colors.grey[50]!, // Scaffoldのbodyの背景色など
  error: Colors.red[600]!, // TextFormFieldのvalidation失敗時の色など
  onPrimary: Colors.grey[50]!, // ElevatedButtonのテキストの色など
  onSecondary: Colors.grey[50]!, // FloatingActionButtonのchildの色など
  onSurface: Colors.brown,
  onBackground: Colors.brown,
  onError: Colors.brown,
  brightness: Brightness.light,
);

const ColorScheme darkTheme = ColorScheme(
  primary: Colors.white,
  primaryVariant: Colors.white,
  secondary: Colors.black,
  secondaryVariant: Colors.black,
  surface: Colors.grey,
  background: Colors.grey,
  error: Colors.black,
  onPrimary: Colors.black,
  onSecondary: Colors.white,
  onSurface: Colors.white,
  onBackground: Colors.white,
  onError: Colors.white,
  brightness: Brightness.light,
);

// final TextTheme theTextTheme =
//     GoogleFonts.abrilFatfaceTextTheme(Typography.material2018().black.copyWith(
//           headline1: TextStyle(color: Colors.brown),
//           headline2: TextStyle(color: Colors.brown),
//           headline3: TextStyle(color: Colors.brown),
//           headline4: TextStyle(color: Colors.brown),
//           headline5:
//               TextStyle(color: Colors.teal), // AboutDialogのapplicationNameなど
//           headline6: TextStyle(color: Colors.cyan), // AlertDialogのtitleなど
//           subtitle1: TextStyle(color: Colors.orange), // ListTileのtitleなど
//           subtitle2: TextStyle(color: Colors.brown),
//           bodyText1:
//               TextStyle(color: Colors.pink[200]), // Drawer内のListTileのtitleなど
//           bodyText2: TextStyle(color: Colors.red), // 通常のTextなど
//           // ボタンの色はprimaryColorやonPrimaryで上書きされるため、下の.copyWithでフォントを指定してわかるようにします。
//           button: TextStyle(color: Colors.brown),
//           caption: TextStyle(color: Colors.purple), // ListTileのsubtitleなど
//           overline: TextStyle(color: Colors.brown),
//         )).copyWith(
//   button: GoogleFonts.sofia(), // ElevatedButtonのテキストなど
// );

