import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sample_app/Model/constant.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: deviceSize.height * 0.25,
                    width: deviceSize.width,
                    child: SvgPicture.asset(
                      "Asset/Circles.svg",
                      fit: BoxFit.cover,
                      allowDrawingOutsideViewBox: true,
                    ),
                  ),
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30.0, vertical: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            width: deviceSize.width * 0.4,
                            child: Text(
                              "Control Panel",
                              style: TextStyle(
                                  color: white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30),
                            ),
                          ),
                          Spacer(),
                          CircleAvatar(
                            backgroundColor: white,
                            radius: 30,
                            child: SvgPicture.asset(
                              "Asset/user.svg",
                              height: 120,
                              width: 120,
                              fit: BoxFit.cover,
                              allowDrawingOutsideViewBox: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          Container(
            height: deviceSize.height * 0.75,
            width: deviceSize.width,
            decoration: BoxDecoration(
              color: offWhite,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
              ),
            ),
            child: TapBox(),
          )
        ],
      ),
    );
  }
}

class TapBox extends StatelessWidget {
  const TapBox({
    Key? key,
  }) : super(key: key);

  get itemBuilder => null;

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 20.0,
            top: 20.0,
          ),
          child: Text(
            "All Rooms",
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              color: bgColor,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (build, context) {
              return boxes(deviceSize: deviceSize);
            },
            itemCount: 4,
            padding: EdgeInsets.symmetric(
              vertical: 20,
            ),
          ),
        ),
      ],
    );
  }
}

class boxes extends StatelessWidget {
  const boxes({
    Key? key,
    required this.deviceSize,
  }) : super(key: key);

  final Size deviceSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Row(
        children: [
          Container(
            width: deviceSize.width * 0.42,
            height: deviceSize.width * 0.42,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: shadow,
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
          ),
          Spacer(),
          Container(
            width: deviceSize.width * 0.42,
            height: deviceSize.width * 0.42,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(25),
                boxShadow: [
                  BoxShadow(
                    color: shadow,
                    spreadRadius: 10,
                    blurRadius: 5,
                    offset: Offset(0, 3), // changes position of shadow
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
