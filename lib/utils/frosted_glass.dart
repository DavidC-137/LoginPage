import 'package:flutter/material.dart';
import 'dart:ui';

class FrostedGlassBox extends StatelessWidget {
  const FrostedGlassBox({super.key, 
  required this.theWidth,
  required this.theHeigth,
  required this.theChild
  });

  final theWidth;
  final theHeigth;
  final theChild; 
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(  
        width: theWidth,
        height: theHeigth,
        color: Colors.transparent,
        child: Stack(  
          children: [
            //blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 4,
                sigmaY: 4
              ),
              child: Container(),
              ),

            //gradient effect
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: Colors.white.withOpacity(0.13)),
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.15),
                    Colors.white.withOpacity(0.05)
                  ]
                )
              ),
            ),
            //child
            Center(child: theChild,)
          ],
        ),
      ),
    );
  }
}


