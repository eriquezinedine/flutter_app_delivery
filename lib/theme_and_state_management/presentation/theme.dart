import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DeliveryColors {
  static const purple = Color(0XFF5117AC);
  static const green = Color(0XFF20D0C4);
  static const dark = Color(0XFF03091E);
  static const grey = Color(0XFF212738);
  static const lightGrey = Color(0XFFBBBBBB);
  static const veryLightGrey = Color(0XFFF3F3F3);
  static const white = Color(0XFFFFFFFF);
  static const pink = Color(0XFFF5638B);

  static final ThemeData lightTheme = ThemeData.light().copyWith(

    // *** App bar Theme

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: white,
      titleTextStyle: TextStyle(
        color: purple,
        fontSize: 24,
        fontWeight: FontWeight.bold
      )
    ),


    // *** Se utiliza con theme.of(context)
    canvasColor: white,
    primaryColor: purple,
    bottomAppBarColor: veryLightGrey,
    hintColor: grey,

    //***  Text Theme
    textTheme : GoogleFonts.poppinsTextTheme().apply(
      bodyColor: DeliveryColors.purple,
      displayColor: DeliveryColors.purple,
    ),

    // *** TextField Theme
     inputDecorationTheme:  InputDecorationTheme(
       border: _borderLight,
      //  prefixIconColor: purple, // * Esto lo podemos reemplazar
       focusedBorder: _borderLight,
       enabledBorder: _borderLight,
       contentPadding: EdgeInsets.zero,
       labelStyle: const TextStyle(color: purple),
       hintStyle: GoogleFonts.poppins(
         color: lightGrey,
         fontSize: 12
       )
    ),

    // *** Icon Theme

    iconTheme: const IconThemeData(
      color: purple
    )

  );


  static final ThemeData darkTheme = ThemeData.dark().copyWith(

    // *** App bar Theme

    appBarTheme: const AppBarTheme(
      centerTitle: true,
      color: purple,
      titleTextStyle: TextStyle(
        color: white,
        fontSize: 24,
        fontWeight: FontWeight.bold
      )
    ),


    // *** Se utiliza con theme.of(context)


    scaffoldBackgroundColor: dark,
    canvasColor: grey,
    primaryColor: white,
    bottomAppBarColor: Colors.transparent,
    hintColor: lightGrey,


    //***  Text Theme
    textTheme : GoogleFonts.poppinsTextTheme().apply(
      bodyColor: DeliveryColors.green,
      displayColor: DeliveryColors.green,
    ),

    // *** TextField Theme
     inputDecorationTheme:  InputDecorationTheme(
       border: _borderDark,
       focusedBorder: _borderDark,
       enabledBorder: _borderDark,
       contentPadding: EdgeInsets.zero,
       labelStyle: const TextStyle(color: white),
       fillColor: grey,
       filled: true,
       hintStyle: GoogleFonts.poppins(
         color: white,
         fontSize: 10
       )
    ),

    // *** Icon Theme

    iconTheme: const IconThemeData(
      color: white
    )

  );

}

final deliveryGradients = <Color>[
  DeliveryColors.green,
  DeliveryColors.purple,
];


final _borderLight = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5),
  borderSide: const BorderSide(
    color: DeliveryColors.veryLightGrey,
    width: 2,
    style: BorderStyle.solid,
  )
);

final _borderDark = OutlineInputBorder(
  borderRadius: BorderRadius.circular(5),
  borderSide: const BorderSide(
    color: DeliveryColors.grey,
    width: 2,
    style: BorderStyle.solid,
  )
);