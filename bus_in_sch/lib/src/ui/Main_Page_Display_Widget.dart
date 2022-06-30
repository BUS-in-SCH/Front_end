import 'package:flutter/material.dart';

class MainPageDisplayWidget extends StatefulWidget {
  const MainPageDisplayWidget({Key? key}) : super(key: key);

  @override
  State<MainPageDisplayWidget> createState() => _MainPageDisplayWidgetState();
}

class _MainPageDisplayWidgetState extends State<MainPageDisplayWidget> {
  @override
  Widget build(BuildContext context) {
    double screen_width = MediaQuery.of(context).size.width;
    double screen_height = MediaQuery.of(context).size.height;

    return Scaffold(
        body: Container(
      color: const Color(0xffdfe9e9), //배경 색
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /**
             * TODO :: 로고 넣기
             */

            // 사각형 2 - 흰색 그림자
            SizedBox(height: 80),
            Container(
                width: screen_width * 0.90,
                height: screen_height * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    boxShadow: [
                      BoxShadow(
                          color: const Color(0x29000000),
                          offset: Offset(0, 0),
                          blurRadius: 6,
                          spreadRadius: 0)
                    ],
                    color: const Color(0xffffffff)),
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.all(25),
                      width: screen_width * 0.85,
                      height: screen_height * 0.12,
                      decoration: BoxDecoration(color: const Color(0xff87aaaa)),
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment
                              .center, //center로 하는게 나을지 start가 나을지..
                          children: [
                            Text("현재 시간",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500)),
                            Text("시간 나오는 곳",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400)),
                          ],
                        ),
                      ),
                    ),
                    //사각형 4
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      width: screen_width * 0.85,
                      height: screen_height * 0.35,
                      decoration: BoxDecoration(color: const Color(0xffd8fffe)),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    getAlarmBox(screen_width, screen_height),

                    SizedBox(
                      height: 15,
                    ),
                    getBusBox("학내순환")
                  ],
                ))
          ],
        ),
      ),
    ));
  }

  Widget getAlarmBox(double screen_width, double screen_height) {
    return SizedBox(
      width: screen_width * 0.78,
      height: screen_height * 0.07,
      child: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.alarm, size: 20),
        label: Text("알람 추가",
            style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500)),
        style: ElevatedButton.styleFrom(
          primary: Color(0xffa4c9c9),
        ),
      ),
    );
  }

  Widget getBusBox(String str) {
    double w = 300;
    double h = 60;

    return InkWell(
      child: Container(
        width: w,
        height: h,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            boxShadow: [
              BoxShadow(
                  color: const Color(0x29000000),
                  offset: Offset(0, 0),
                  blurRadius: 6,
                  spreadRadius: 0)
            ],
            color: Color(0xffb9e2e2)),
        child: Row(
          children: [
            Container(
              width: w * 0.3,
              child: Center(child: Text(str)),
            ),
            Container(
              width: w * 0.7,
              child: Container(
                margin: EdgeInsets.fromLTRB(0, 10, 10, 10),
                color: Colors.white,
                child: Column(
                  children: [Text("후문정류장에서"), Text("2분 뒤 출발")],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
