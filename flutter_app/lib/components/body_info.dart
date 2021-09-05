import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/components/Table_element.dart';
import 'package:flutter_app/cameraPage.dart';
import 'package:flutter_app/Screens/components/rounded_button.dart';
import 'package:flutter_app/Screens/components/background.dart';


class InfoBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BackGround(child:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
            "Back-Bend is your handheld \n posture checker",
            textAlign: TextAlign.center,
            style:
            TextStyle(fontWeight: FontWeight.bold, fontSize: 26)
        ),

        TableElement(
          text: "70% of adults complain of back pain. That number is still growing",
          image: "assets/images/statistics.png",
          color: Color(0xFFE7DCF5)
        ),

        TableElement(
            text: "The leading culprit is poor spinal posture, both when stationary or when engaged in exercise",
            image: "assets/images/spine (1).png",
            color: Color(0xFFD8C1F6)
        ),

        TableElement(
            text: "Back-Bend actively helps you keep track of your posture, for better back health",
            image: "assets/images/eye.png",
            color: Color(0xFFC8A5F7)
        ),

        SizedBox(height: size.height*0.04),
        RoundedButton(
          text: "Open Camera!",
          press: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:(context){
                  return CameraPage();
                },
              ),
            );
          },
        ),
      ],
    ),
    );
  }
}