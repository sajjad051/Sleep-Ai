import 'package:flutter/material.dart';
import 'package:circular_rotation/circular_rotation.dart';


class CircularRotationPage extends StatefulWidget {
  @override
  _CircularRotationPageState createState() => _CircularRotationPageState();
}

class _CircularRotationPageState extends State<CircularRotationPage> {
  final List<Widget> _firstCircleImages = [];
  final List<Widget> _secondCircleImages = [];
  final List<Widget> _thirdCircleImages = [];

  @override
  void initState() {
    generateImages();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/sleep/demo_ic.webp"),
          ),
        ),
        child: CircularRotation(
          circularRotationProperty: CircularRotationModel(
            firstCircleFill: true,
            secondCircleFill: true,
            thirdCircleFill: true,
            firstCircleFillColor: Colors.red,
            secondCircleFillColor: Colors.blue,
            thirdCircleFillColor: Colors.purple,
            defaultCircleStrokeWidth: Dimens.strokeSmall,
            defaultCircleStrokeColor: Colors.white,
            startAnimation: true,
            repeatAnimation: false,
            firstCircleAnimationDuration: Constants.firstCircleAnimationDurationInMilliseconds,
            secondCircleAnimationDuration: Constants.secondCircleAnimationDurationInMilliseconds,
            thirdCircleAnimationDuration: Constants.thirdCircleAnimationDurationInMilliseconds,
            centerWidget: InkWell(
              onTap: CircularRotation.eitherStartOrStopAnimation,
              child: _GetProfile(
                name: Strings.tom,
                image: "assets/sleep/demo_ic.webp", // Center profile image
                radius: Dimens.radiusLarge,
              ),
            ),
            firstCircleWidgets: _firstCircleImages,
            secondCircleWidgets: _secondCircleImages,
            thirdCircleWidgets: _thirdCircleImages,
            thirdCircleRadians: Dimens.thirdCircleRadians,
            secondCircleRadians: Dimens.secondCircleRadians,
            firstCircleRadians: Dimens.firstCircleRadians,
          ),
        ),
      ),
    );
  }

  void generateImages() {
    var listOfNames = [
      Strings.dad,
      Strings.uncleP,
      Strings.cindy,
      Strings.sally,
      Strings.sammy,
      Strings.bob,
      Strings.aria,
    ];

    // Adding images into first circle.
    _firstCircleImages.add(_GetProfile(name: listOfNames[4], image: "assets/sleep/demo_ic.webp"));
    _firstCircleImages.add(_GetProfile(name: listOfNames[3], image: "assets/sleep/demo_ic.webp"));
    _firstCircleImages.add(_GetProfile(name: listOfNames[6], image: "assets/sleep/demo_ic.webp"));

    // Adding images into second circle.
    _secondCircleImages.add(_GetProfile(name: listOfNames[1], image: "assets/sleep/demo_ic.webp"));
    _secondCircleImages.add(_GetProfile(name: listOfNames[2], image: "assets/sleep/demo_ic.webp"));
    _secondCircleImages.add(_GetProfile(name: listOfNames[5], image: "assets/sleep/demo_ic.webp"));

    // Adding images into third circle.
    _thirdCircleImages.add(_GetProfile(name: listOfNames[0], image: "assets/sleep/demo_ic.webp"));
  }
}

class _GetProfile extends StatelessWidget {
  const _GetProfile({
    required this.name,
    required this.image,
    this.radius = Dimens.radiusNormal,
    Key? key,
  }) : super(key: key);
  final String name;
  final String image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _CircularImage(image: image, radius: radius),
        Text(
          name,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}

class _CircularImage extends StatelessWidget {
  const _CircularImage({required this.image, required this.radius, Key? key}) : super(key: key);
  final String image;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundImage: AssetImage(image),
      backgroundColor: Colors.transparent,
    );
  }
}
class Constants {
  static const int firstCircleAnimationDurationInMilliseconds = 1000;
  static const int secondCircleAnimationDurationInMilliseconds = 1500;
  static const int thirdCircleAnimationDurationInMilliseconds = 2000;
}
class Dimens {
  static const double radiusLarge = 50.0;
  static const double radiusNormal = 40.0;
  static const double strokeSmall = 2.0;
  static const double thirdCircleRadians = 2.0;
  static const double secondCircleRadians = 3.0;
  static const double firstCircleRadians = 4.0;
}
class Strings {
  static const String tom = "Tom";
  static const String dad = "Dad";
  static const String uncleP = "Uncle P";
  static const String cindy = "Cindy";
  static const String sally = "Sally";
  static const String sammy = "Sammy";
  static const String bob = "Bob";
  static const String aria = "Aria";
}
