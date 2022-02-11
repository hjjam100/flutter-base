import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  // 앱 구동 시 실행되는 함수
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            elevation: 1,
            toolbarHeight: 56,
            toolbarOpacity: 1,
            backgroundColor: Colors.white,
            title: SvgPicture.asset(
              'assets/logo.svg',
              width: 86,
            ),
            titleSpacing: 20,
            titleTextStyle: const TextStyle(color: Colors.black),
            centerTitle: false,
            bottomOpacity: 0.0,
            shape: const Border(bottom: BorderSide(color: Color(0x00BBBEC6), width: 1.0)),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Banner(),
              ],
            ),
          )),
    );
  }
}

class Banner extends StatelessWidget {
  const Banner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
        color: Colors.white,
        // full width
        width: double.infinity,
        alignment: Alignment.bottomLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: Text.rich(
                TextSpan(
                    text: '모든 날의 나를 존중하는 \n맞춤 수리 서비스 \n',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, fontFamily: 'Spoqa Han Sans Neo', height: 1.4),
                    children: <TextSpan>[
                      TextSpan(
                        text: '마이소장',
                        style: TextStyle(color: Color(0xFFA03B54)),
                      ),
                    ]),
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: Color(0xFFA03B54),
                textStyle: const TextStyle(fontSize: 16, height: 1.5, fontWeight: FontWeight.bold, fontFamily: 'Spoqa Han Sans Neo'),
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              ),
              onPressed: () {
                log('버튼 클릭');
              },
              child: Text(
                '바로 예약하기',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, fontFamily: 'Spoqa Han Sans', height: 1.4),
              ),
            )
          ],
        ));
  }
}
