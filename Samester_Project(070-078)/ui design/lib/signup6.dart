import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Component61.dart';
import './signup5.dart';
import 'package:adobe_xd/page_link.dart';
import './Component51.dart';
import 'package:flutter_svg/flutter_svg.dart';

class signup6 extends StatelessWidget {
  signup6({
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
            alignment: Alignment(-0.101, 0.373),
            child: SizedBox(
              width: 161.0,
              height: 58.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => signup5(),
                  ),
                ],
                child: Component61(),
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.071, 0.362),
            child: SizedBox(
              width: 62.0,
              height: 27.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => signup5(),
                  ),
                ],
                child: Component51(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 300.0, start: 58.5),
            Pin(size: 1.0, middle: 0.2546),
            child: SvgPicture.string(
              _svg_delu3,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 300.0, start: 58.5),
            Pin(size: 1.0, middle: 0.3443),
            child: SvgPicture.string(
              _svg_fktbk,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 64.0, end: 64.0),
            Pin(size: 1.0, middle: 0.4124),
            child: SvgPicture.string(
              _svg_roprcj,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 64.0, end: 64.0),
            Pin(size: 1.0, middle: 0.5022),
            child: SvgPicture.string(
              _svg_s6yymd,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 53.0, start: 59.0),
            Pin(size: 27.0, middle: 0.2325),
            child: Text(
              'Name',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 65.0, start: 64.0),
            Pin(size: 27.0, middle: 0.3949),
            child: Text(
              'Section',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 39.0, start: 8.0),
            Pin(size: 39.0, middle: 0.2311),
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
            Pin(size: 68.0, start: 58.0),
            Pin(size: 27.0, middle: 0.3304),
            child: Text(
              'Roll_No',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 94.0, start: 61.0),
            Pin(size: 27.0, middle: 0.4928),
            child: Text(
              'Moderator',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 39.0, start: 10.0),
            Pin(size: 39.0, middle: 0.4927),
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

const String _svg_delu3 =
    '<svg viewBox="58.5 235.5 300.0 1.0" ><path transform="translate(58.5, 235.5)" d="M 0 1 L 300 0" fill="none" stroke="#f5f5f5" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_fktbk =
    '<svg viewBox="58.5 318.5 300.0 1.0" ><path transform="translate(58.5, 318.5)" d="M 0 1 L 300 0" fill="none" stroke="#e7e0e0" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_roprcj =
    '<svg viewBox="64.0 381.5 300.0 1.0" ><path transform="translate(64.0, 381.5)" d="M 0 1 L 300 0" fill="none" stroke="#e8dfdf" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_s6yymd =
    '<svg viewBox="64.0 464.5 300.0 1.0" ><path transform="translate(64.0, 464.5)" d="M 0 1 L 300 0" fill="none" stroke="#dbe7e4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
