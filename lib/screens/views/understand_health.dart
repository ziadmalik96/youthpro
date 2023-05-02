import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moment_dart/moment_dart.dart';
import 'package:youthpro/constant/colors.dart';

class UnderstandHealthView extends StatefulWidget {
  const UnderstandHealthView({Key? key}) : super(key: key);

  @override
  _UnderstandHealthViewState createState() => _UnderstandHealthViewState();
}

class _UnderstandHealthViewState extends State<UnderstandHealthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff2f2f2),
      body: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 140, left: 0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/images/frontbody.png',
              scale: 2,
            ),
          ),
          Positioned(
            bottom: 100,
              left: 50,
              right: 50,
              child:  Container(
                width: MediaQuery.of(context).size.width*.9,
                height: MediaQuery.of(context).size.height*.06,
                decoration: BoxDecoration(
                  color: blue,
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Center(
                  child: Text('Start',style: GoogleFonts.outfit(
                    fontSize: 16,
                    color: white
                  ),),
                ),
              ))
        ],
      ),
    );
  }

}
