import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  Size screenSize;
  HeroSection({required this.screenSize});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: screenSize.height / 1.5,
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
          constraints: BoxConstraints(
            maxWidth: screenSize.width,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 150),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  'assets/images/iPhone hero image.png',
                  height: 889,
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
                          'assets/images/Icon App Store@2x.png',
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
