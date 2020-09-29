import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:auto_size_text/auto_size_text.dart';

Widget homeSectionBuilder(
    String imageLoc, String text, BuildContext context, String routeName) {
  return Card(
    elevation: 5,
    color: Theme.of(context).accentColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
    child: InkWell(
      borderRadius: BorderRadius.circular(10),
      onTap: () {
        Navigator.pushNamed(context, routeName);
      },
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        width: 110,
        height: 110,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              imageLoc,
              height: 50,
              width: 50,
            ),
            AutoSizeText(
              text,
              style: TextStyle(
                  fontSize: 10,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).primaryColor),
              textAlign: TextAlign.center,
              maxLines: 2,
              maxFontSize: 12,
            ),
          ],
        ),
      ),
    ),
  );
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: true,
        home: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          appBar: AppBar(
            backgroundColor: Hexcolor('#F2F5F6'),
            title: Text(
              'E-POLICE',
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Montserrat',
                  fontSize: 35),
            ),
            centerTitle: true,
          ),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                colorFilter: ColorFilter.mode(
                    Colors.white.withOpacity(0.08), BlendMode.dstATop),
                fit: BoxFit.cover,
                image: AssetImage('assets/images/police_logo.png'),
              ),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    homeSectionBuilder(
                        'assets/images/fir.png', 'File FIR', context, '/fir'),
                    homeSectionBuilder('assets/images/status.png',
                        'Check previous FIR status', context, '/status'),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    homeSectionBuilder('assets/images/complaint.png',
                        'Lodge Complaint', context, '/complaint'),
                    homeSectionBuilder('assets/images/station.png',
                        'Nearby Police Station', context, '/station'),
                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    homeSectionBuilder('assets/images/rules.png',
                        'Important Information', context, '/information')
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
