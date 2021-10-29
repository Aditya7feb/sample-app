import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:sample_app/Model/constant.dart';
import 'package:sample_app/view/room.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Asset/bulb.svg',
              height: 20,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Asset/Icon feather-home.svg',
              height: 20,
            ),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'Asset/Icon feather-settings.svg',
              height: 20,
            ),
            title: Text(''),
          ),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Colors.white,
      ),
      backgroundColor: bgColor,
      body: SingleChildScrollView(
        child: Column(
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
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 30),
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
                                    fontSize: 28),
                              ),
                            ),
                            Spacer(),
                            CircleAvatar(
                              maxRadius: deviceSize.width * 0.11,
                              child: Image.asset(
                                'Asset/user.png',
                                fit: BoxFit.fitHeight,
                                height: 200,
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
              fontSize: 20,
              color: blueText,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        TileRow(
          child1: Tile(
              deviceSize: deviceSize,
              title: "Bed Room",
              bulb: 4,
              img: 'Asset/1.png',
              onTap: () {
                Get.to(() => LightDescription(), transition: Transition.zoom);
              }),
          child2: Tile(
            deviceSize: deviceSize,
            title: "Living Room",
            bulb: 2,
            img: 'Asset/1r.png',
            onTap: () {},
          ),
        ),
        TileRow(
          child1: Tile(
            deviceSize: deviceSize,
            title: "Kitchen",
            bulb: 5,
            img: 'Asset/2.png',
            onTap: () {},
          ),
          child2: Tile(
            deviceSize: deviceSize,
            title: "Bathroom",
            bulb: 1,
            img: 'Asset/2r.png',
            onTap: () {},
          ),
        ),
        TileRow(
          child1: Tile(
            deviceSize: deviceSize,
            title: "Outdoor",
            bulb: 5,
            img: 'Asset/3.png',
            onTap: () {},
          ),
          child2: Tile(
            deviceSize: deviceSize,
            title: "Balcony",
            bulb: 2,
            img: 'Asset/3r.png',
            onTap: () {},
          ),
        )
      ],
    );
  }
}

class TileRow extends StatelessWidget {
  const TileRow({Key? key, required this.child1, required this.child2})
      : super(key: key);

  final Widget child1;
  final Widget child2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 10.0,
      ),
      child: Row(
        children: [
          child1,
          Spacer(),
          child2,
        ],
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    Key? key,
    required this.deviceSize,
    required this.title,
    required this.bulb,
    required this.onTap,
    required this.img,
  }) : super(key: key);

  final Size deviceSize;
  final String title;
  final int bulb;
  final VoidCallback onTap;
  final String img;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
        child: Padding(
          padding: EdgeInsets.only(
              top: deviceSize.width * 0.06,
              left: deviceSize.width * 0.06,
              right: 10,
              bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: deviceSize.width * 0.13,
                child: Image.asset(img),
              ),
              Spacer(),
              Text(
                title,
                style: TextStyle(
                  color: tileFontBlack,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              Text(
                "$bulb Lights",
                style: TextStyle(
                  color: tileFontOrange,
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
