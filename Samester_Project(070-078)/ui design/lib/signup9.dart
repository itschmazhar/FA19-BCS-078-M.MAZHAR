import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Component61.dart';
import './Component51.dart';
import './signup7.dart';
import 'package:adobe_xd/page_link.dart';

class signup9 extends StatelessWidget {
  signup9({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.09, 0.941),
                end: Alignment(0.131, -1.065),
                colors: [
                  const Color(0xff526490),
                  const Color(0xfff4b3b3),
                  const Color(0xff7a5959)
                ],
                stops: [0.0, 0.766, 1.0],
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
            margin: EdgeInsets.fromLTRB(-143.0, -175.0, -442.0, 89.0),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.09, 0.941),
                end: Alignment(0.131, -1.065),
                colors: [
                  const Color(0x4005c4fc),
                  const Color(0x40f4b3b3),
                  const Color(0x407a5959)
                ],
                stops: [0.0, 0.766, 1.0],
              ),
              borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
            ),
            margin: EdgeInsets.fromLTRB(-115.0, -187.0, -518.0, -4.0),
          ),
          Pinned.fromPins(
            Pin(size: 52.0, start: 58.0),
            Pin(size: 56.0, start: 32.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.cover,
                ),
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 197.0, middle: 0.5195),
            Pin(size: 27.0, start: 59.0),
            child: Text(
              'Project Allocation App',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 23.0, start: 6.0),
            Pin(size: 23.0, start: 13.0),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 25.0, end: 53.0),
            Pin(size: 254.0, middle: 0.2738),
            child: SingleChildScrollView(
              primary: false,
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}, {}, {}, {}, {}].map((itemData) {
                  return SizedBox(
                    width: 350.0,
                    height: 34.0,
                    child: Stack(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                            border: Border.all(
                                width: 1.0, color: const Color(0xff707070)),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 286.0, start: 64.0),
            Pin(size: 27.0, middle: 0.2036),
            child: Text(
              'guest house managment system',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(-0.292, -0.466),
            child: SizedBox(
              width: 233.0,
              height: 27.0,
              child: Text(
                'hostel managment system',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.593, -0.362),
            child: SizedBox(
              width: 84.0,
              height: 27.0,
              child: Text(
                'piza shop',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.34, -0.221),
            child: SizedBox(
              width: 222.0,
              height: 27.0,
              child: Text(
                'bank managment system',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.5, -0.121),
            child: SizedBox(
              width: 148.0,
              height: 27.0,
              child: Text(
                'car rental system',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                textAlign: TextAlign.center,
                softWrap: false,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 161.0, middle: 0.4981),
            Pin(size: 58.0, end: 99.0),
            child: Component61(),
          ),
          Pinned.fromPins(
            Pin(size: 26.0, middle: 0.49),
            Pin(size: 27.0, end: 116.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => signup7(),
                ),
              ],
              child: Component51(),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, end: 21.0),
            Pin(size: 24.0, middle: 0.459),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, end: 21.0),
            Pin(size: 24.0, middle: 0.3958),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, end: 21.0),
            Pin(size: 24.0, middle: 0.3326),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, end: 21.0),
            Pin(size: 24.0, middle: 0.2694),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, end: 21.0),
            Pin(size: 24.0, middle: 0.2062),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
