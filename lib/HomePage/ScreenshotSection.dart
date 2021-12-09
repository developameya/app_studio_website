import 'package:flutter/material.dart';
import 'ScreenshotsElement.dart';

class ScreenshotSection extends StatelessWidget {
  Size screenSize;
  ScreenshotSection({required this.screenSize});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Container(
          height: screenSize.height / 2,
          width: screenSize.width,
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: Alignment(-3, -5),
              radius: 10,
              colors: [
                Color(0xff998CEB),
                Color(0xff4D4676),
              ],
            ),
          ),
        ),
        Container(
          child: Column(
            children: [
              Column(
                children: [
                  Text(
                    'Check it out!',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w200,
                        fontSize: 40),
                  ),
                  Container(
                    height: 2,
                    width: 250,
                    color: Color(0xff998CEB),
                  ),
                ],
              ),
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ScreenshotsElement(
                      imagePath: 'assets/images/1-app store screenshot@2x.png'),
                  ScreenshotsElement(
                      imagePath: 'assets/images/2-app store screenshot@2x.png'),
                  ScreenshotsElement(
                      imagePath: 'assets/images/3-app store screenshot@2x.png'),
                  ScreenshotsElement(
                      imagePath: 'assets/images/4-app store screenshot@2x.png'),
                ],
              ),
              SizedBox(height: 100),
              Column(
                children: [
                  Text(
                    'Find Signary on the App Store',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w200,
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: 2,
                    width: 600,
                    color: Color(0xff998CEB),
                  ),
                ],
              ),
              SizedBox(height: 100),
              InkWell(
                onTap: () {},
                child: Image.asset(
                  'assets/images/Icon App Store@2x.png',
                  width: 150,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
