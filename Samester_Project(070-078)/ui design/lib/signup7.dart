import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Component61.dart';
import './Component51.dart';
import './signup8.dart';
import 'package:adobe_xd/page_link.dart';
import './signup9.dart';
import './signup10.dart';

class signup7 extends StatelessWidget {
  signup7({
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
          Align(
            alignment: Alignment(0.039, -0.435),
            child: SizedBox(
              width: 197.0,
              height: 58.0,
              child: Component61(),
            ),
          ),
          Align(
            alignment: Alignment(0.039, 0.067),
            child: SizedBox(
              width: 197.0,
              height: 58.0,
              child: Component61(),
            ),
          ),
          Align(
            alignment: Alignment(0.039, -0.168),
            child: SizedBox(
              width: 197.0,
              height: 58.0,
              child: Component61(),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.419),
            child: SizedBox(
              width: 132.0,
              height: 27.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => signup8(),
                  ),
                ],
                child: Component51(),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, -0.161),
            child: SizedBox(
              width: 150.0,
              height: 27.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => signup9(),
                  ),
                ],
                child: Component51(),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.061),
            child: SizedBox(
              width: 160.0,
              height: 27.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => signup10(),
                  ),
                ],
                child: Component51(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
