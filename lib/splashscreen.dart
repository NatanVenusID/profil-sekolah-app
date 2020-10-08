import 'package:flutter/material.dart';
import 'package:maps_schoolapp/login_page.dart';
import 'dart:async';
import 'package:shimmer/shimmer.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState(){
    super.initState();

    _mockCheckForSession().then(
        (status) {
          if (status) {
            _navigateToHome();
          } else {
            _navigateToLogin();
          }
        }
    );
  }


  Future<bool> _mockCheckForSession() async {
    await Future.delayed(Duration(milliseconds: 6000), () {});

    return true;
  }

  void _navigateToHome(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (BuildContext context) => LoginPage()
      )
    );
  }

  void _navigateToLogin(){
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(
            builder: (BuildContext context) => LoginPage()
        )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Container(
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Opacity(
                  opacity: 0.5,
                  child: Image.asset('assets/masehi.png')
              ),

              Shimmer.fromColors(
                period: Duration(milliseconds: 1500),
                baseColor: Colors.red,
                highlightColor: Colors.amber,
              
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  
                    Container(
                      child: Text("Selamat datang di",style: TextStyle(fontSize: 20),),
                    ),
                    
                    Container(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        "Sekolah Masehi",
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Pacifico',
                          shadows: <Shadow>[
                            Shadow(
                              blurRadius: 10.0,
                              color: Colors.black87,
                              offset: Offset.fromDirection(140, 12)
                            )
                          ]
                        ),
                      ),
                    ),
                    Container(
                      child: Text("Paud-TK-SD-SMP-SMA",style: TextStyle(fontSize: 20),),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }


}