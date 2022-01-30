import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class GoogleFontsDemoScreen extends StatelessWidget {
  const GoogleFontsDemoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(title:
            Text("Google Fonts demo",
                style: GoogleFonts.orbitron(
                  fontSize: 30,
                )
            ),
            ),
            body: Center(child: Column(
              children: [
                Text(
                  'This is Google Fonts',
                  style: GoogleFonts.oswald(
                    textStyle: TextStyle(fontSize: 26),
                  ),
                ),
                // load the font dynamically
                Text(
                  'This is Google Fonts',
                  style: GoogleFonts.getFont('Comforter',
                  fontSize: 40),

                ),
                Text(
                  'use GoogleFonts with an existing TextStyle',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(color: Colors.blue, letterSpacing: .5),
                  ),
                ),
                Text(
                  'This is Google Fonts',
                  style: GoogleFonts.lato(textStyle: Theme.of(context).textTheme.headline4),
                ),
                Text(
                  'override params',
                  //style: GoogleFonts.lato(
                    style: GoogleFonts.dancingScript(
                    textStyle: Theme.of(context).textTheme.headline4,
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    //fontStyle: FontStyle.italic,
                  ),
                ),
              ],
            ),)
        )
    );
  }
}