import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      Container(
  decoration: BoxDecoration(
    color: Color(0xFFF6F6F6),
  ),
  child: Stack(
    children: [
      Positioned(
        left: -124,
        top: -124,
        child: SizedBox(
          width: 290,
          height: 270,
          child: SvgPicture.network(
            'assets/vectors/shape_5_x2.svg',
          ),
        ),
      ),
Container(
        padding: EdgeInsets.fromLTRB(25, 15, 24, 94),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 1.3, 189),
              child: Stack(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 0, 7.5, 1),
                          child: SizedBox(
                            width: 31,
                            child: Text(
                              '9:45',
                              style: GoogleFonts.getFont(
                                'Poppins',
                                fontWeight: FontWeight.w600,
                                fontSize: 13,
                                height: 1.2,
                                letterSpacing: 0.8,
                                color: Color(0xFF000000),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 54.1,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 5.9, 0),
                                child: SizedBox(
                                  width: 14.7,
                                  height: 16,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width: 13.6,
                                        height: 16,
                                        child: SvgPicture.network(
                                          'assets/vectors/vector_48_x2.svg',
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 14.7,
                                          height: 16,
                                          child: 
                                          SizedBox(
                                            width: 13.6,
                                            height: 16,
                                            child: SvgPicture.network(
                                              'assets/vectors/vector_8_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 1, 5.3, 1),
                                child: SizedBox(
                                  width: 14.7,
                                  height: 16,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width: 14.7,
                                        height: 14,
                                        child: SvgPicture.network(
                                          'assets/vectors/vector_55_x2.svg',
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 14.7,
                                          height: 16,
                                          child: 
                                          SizedBox(
                                            width: 14.7,
                                            height: 14,
                                            child: SvgPicture.network(
                                              'assets/vectors/vector_45_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
                                child: SizedBox(
                                  width: 14.7,
                                  height: 16,
                                  child: Stack(
                                    children: [
                                      SizedBox(
                                        width: 14.7,
                                        height: 10,
                                        child: SvgPicture.network(
                                          'assets/vectors/vector_40_x2.svg',
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        child: Container(
                                          width: 14.7,
                                          height: 16,
                                          child: 
                                          SizedBox(
                                            width: 14.7,
                                            height: 10,
                                            child: SvgPicture.network(
                                              'assets/vectors/vector_13_x2.svg',
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      height: 15,
                      child: Text(
                        '9:45',
                        style: GoogleFonts.getFont(
                          'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                          height: 1.2,
                          letterSpacing: 0.8,
                          color: Color(0xFF000000),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0.6, 0, 0, 41),
              child: SizedBox(
                width: 172.6,
                height: 170,
                child: SvgPicture.network(
                  'assets/vectors/undraw_mobile_ux_o_0_e_11_x2.svg',
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 49.4, 40),
              child: Text(
                'Ika Ticket',
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 18,
                  height: 1.2,
                  letterSpacing: 1.1,
                  color: Color(0xBF000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0, 92),
              child: Text(
                'Plateforme permettant aux apprenants de gérer leurs tickets et d'améliorer leurs connaissances et leurs compétences.',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.4,
                  letterSpacing: 0.8,
                  color: Color(0xBD000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(1, 0, 0, 0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF50C2C9),
                ),
                child: Container(
                  padding: EdgeInsets.fromLTRB(0, 18.5, 1, 18.5),
                  child: 
                  Text(
                    'Commencer',
                    style: GoogleFonts.getFont(
                      'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      height: 1.4,
                      letterSpacing: 1.1,
                      color: Color(0xFFFFFFFF),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}