import 'dart:async';

import 'package:appgallobet/util/animacion_particulas.dart';
import 'package:appgallobet/util/navegate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState

    super.initState();
    Timer(const Duration(seconds: 5), () => Navegate.goToWelcome(context));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Positioned.fill(
            child: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.bottomRight,
                      colors: [Color(0xFFFFA50E), Color(0xFFF26D2B)])),
            ),
          ),
          const Positioned.fill(
            child: Opacity(opacity: 0.5, child: AnimacionParticulas(50)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/svg/gb_logo.svg'),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const <Widget>[
              /* CircularProgressIndicator(
                color: Colors.white,
              ), */
              SizedBox(
                height: 10,
              ),
              Text(
                'from',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Text(
                'FiveCod SoftWare',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
              Padding(padding: EdgeInsets.only(bottom: 40.0))
            ],
          )
        ],
      ),
    );
  }
}
