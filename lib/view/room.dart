import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sample_app/Model/constant.dart';

class LightDescription extends StatefulWidget {
  const LightDescription({Key? key}) : super(key: key);

  @override
  _LightDescriptionState createState() => _LightDescriptionState();
}

class _LightDescriptionState extends State<LightDescription> {
  double _currentSliderValue = 20;
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
          children: [
            Column(
              children: [
                Stack(
                  children: [
                    Container(
                      height: deviceSize.height * 0.32,
                      width: deviceSize.width,
                      child: SvgPicture.asset(
                        "Asset/Circles.svg",
                        fit: BoxFit.cover,
                        height: deviceSize.height * 0.55,
                        allowDrawingOutsideViewBox: true,
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 20.0,
                            right: 20,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  top: deviceSize.height * 0.05,
                                ),
                                width: deviceSize.width * 0.4,
                                child: Text(
                                  "Bed \nRoom",
                                  style: TextStyle(
                                      color: white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 28),
                                ),
                              ),
                              Spacer(),
                              SvgPicture.asset(
                                "Asset/light bulb.svg",
                                fit: BoxFit.cover,
                                height: deviceSize.height * 0.2,
                                allowDrawingOutsideViewBox: true,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: 20.0, right: 20, top: deviceSize.height * 0.18),
                      child: Text(
                        "4 Lights",
                        style: TextStyle(
                          color: Colors.yellow.shade700,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: deviceSize.width * 0.05,
                          top: deviceSize.width * 0.50),
                      child: Container(
                        height: 40,
                        width: deviceSize.width,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                color: blueShadow,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: Offset(
                                        3, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  SvgPicture.asset(
                                    "Asset/surface1.svg",
                                    fit: BoxFit.cover,
                                    height: deviceSize.width * 0.05,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "Main Light",
                                    style: TextStyle(
                                        color: blueText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                color: blue,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: whiteShadow,
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: Offset(
                                        3, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  SvgPicture.asset(
                                    "Asset/furniture-and-household.svg",
                                    fit: BoxFit.cover,
                                    height: deviceSize.width * 0.05,
                                    color: white,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "Desk Light",
                                    style: TextStyle(
                                        color: white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              width: 15,
                            ),
                            Container(
                              height: 35,
                              width: 120,
                              decoration: BoxDecoration(
                                color: blueShadow,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    spreadRadius: 5,
                                    blurRadius: 10,
                                    offset: Offset(
                                        3, 3), // changes position of shadow
                                  ),
                                ],
                              ),
                              child: Row(
                                children: [
                                  SizedBox(width: 10),
                                  SvgPicture.asset(
                                    "Asset/bed (1).svg",
                                    fit: BoxFit.cover,
                                    height: deviceSize.width * 0.05,
                                  ),
                                  SizedBox(width: 6),
                                  Text(
                                    "Bed Room",
                                    style: TextStyle(
                                        color: blueText,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  height: deviceSize.height * 0.68,
                  width: deviceSize.width,
                  decoration: BoxDecoration(
                    color: offWhite,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: deviceSize.width * 0.05,
                            top: deviceSize.width * 0.05),
                        child: Text(
                          "Intensity",
                          style: TextStyle(
                              color: blueText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding:
                                EdgeInsets.only(left: deviceSize.width * 0.05),
                            child: Container(
                                child: SvgPicture.asset("Asset/solution2.svg")),
                          ),
                          Expanded(
                            child: Slider.adaptive(
                              activeColor: Colors.yellow.shade600,
                              value: _currentSliderValue,
                              min: 0,
                              max: 100,
                              divisions: 5,
                              label: _currentSliderValue.round().toString(),
                              onChanged: (double value) {
                                setState(() {
                                  _currentSliderValue = value;
                                });
                              },
                            ),
                          ),
                          Padding(
                            padding:
                                EdgeInsets.only(right: deviceSize.width * 0.05),
                            child: Container(
                                child: SvgPicture.asset(
                              "Asset/solution1.svg",
                              color: Colors.yellow.shade600,
                            )),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: deviceSize.width * 0.05,
                            top: deviceSize.width * 0.05),
                        child: Text(
                          "Colors",
                          style: TextStyle(
                              color: blueText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: 20.0, right: 60, top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.pink.shade200,
                              ),
                            ),
                            InkWell(
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.green.shade200,
                              ),
                            ),
                            InkWell(
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.blue.shade200,
                              ),
                            ),
                            InkWell(
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.deepPurple.shade300,
                              ),
                            ),
                            InkWell(
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.purple.shade200,
                              ),
                            ),
                            InkWell(
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.amber.shade200,
                              ),
                            ),
                            InkWell(
                              child: CircleAvatar(
                                radius: 14,
                                backgroundColor: Colors.white,
                                child: Icon(Icons.add),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: deviceSize.width * 0.05,
                            top: deviceSize.width * 0.10),
                        child: Text(
                          "Scenes",
                          style: TextStyle(
                              color: blueText,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: deviceSize.width * 0.1,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: deviceSize.height * 0.07,
                            width: deviceSize.width * 0.40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(255, 155, 155, 1),
                                  Color.fromRGBO(254, 184, 145, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "Asset/solution1.svg",
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Birthday",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: deviceSize.height * 0.07,
                            width: deviceSize.width * 0.40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(166, 147, 235, 1),
                                  Color.fromRGBO(214, 147, 235, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "Asset/solution1.svg",
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Party",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: deviceSize.width * 0.06,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: deviceSize.height * 0.07,
                            width: deviceSize.width * 0.40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(147, 202, 235, 1),
                                  Color.fromRGBO(147, 220, 235, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "Asset/solution1.svg",
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Relax",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            height: deviceSize.height * 0.07,
                            width: deviceSize.width * 0.40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(137, 221, 148, 1),
                                  Color.fromRGBO(186, 235, 146, 1),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(width: 20),
                                  SvgPicture.asset(
                                    "Asset/solution1.svg",
                                    color: Colors.white,
                                  ),
                                  SizedBox(width: 20),
                                  Text(
                                    "Fun",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
