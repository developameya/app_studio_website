import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:app_studio_webstie/Constants/AppColors.dart';
import 'package:flutter/material.dart';

import '../Constants/AppImages.dart';

class HeroSection extends StatelessWidget {
  final Size screenSize;
  HeroSection({required this.screenSize});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.width / 2.5,
          width: screenSize.width,
          decoration: BoxDecoration(
            gradient: radialGradient,
          ),
        ),
        Container(
          child: Padding(
            padding: ResponsiveWidget.isMediumScreen(context)
                ? EdgeInsets.only(
                    right: screenSize.width / 50,
                    left: screenSize.width / 50,
                    top: screenSize.height / 50,
                  )
                : EdgeInsets.only(
                    right: screenSize.width / 8,
                    left: screenSize.width / 8,
                    top: screenSize.height / 50,
                  ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  heroImage,
                  height: screenSize.width / 1.8,
                ),
                SizedBox(width: 80),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        'Curabitur dapibus arcu leo.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w100,
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Sed velit lectus, porttitor eu convallis sit amet, semper eget mauris. Integer in pulvinar mauris. Donec facilisis placerat magna sed cursus.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 28,
                        ),
                      ),
                      SizedBox(height: 80),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(
                          appStoreIconImage,
                          width: 150,
                        ),
                      ),
                      SizedBox(height: 200),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
