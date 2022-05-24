import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './Component31.dart';
import './signup5.dart';
import 'package:adobe_xd/page_link.dart';
import 'package:flutter_svg/flutter_svg.dart';

class signup2 extends StatelessWidget {
  signup2({
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
            margin: EdgeInsets.fromLTRB(-90.0, -179.0, -543.0, -12.0),
          ),
          Align(
            alignment: Alignment(-0.51, 0.466),
            child: SizedBox(
              width: 32.0,
              height: 35.0,
              child: SvgPicture.string(
                _svg_k48st,
                allowDrawingOutsideViewBox: true,
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
            Pin(size: 300.0, start: 58.0),
            Pin(size: 1.0, middle: 0.3486),
            child: SvgPicture.string(
              _svg_td,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, start: 59.0),
            Pin(size: 27.0, middle: 0.2325),
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
          Align(
            alignment: Alignment(-0.211, 0.472),
            child: Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.153, 0.472),
            child: Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
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
            Pin(size: 39.0, start: 9.0),
            Pin(size: 39.0, middle: 0.3258),
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
            Pin(size: 89.0, middle: 0.4897),
            Pin(size: 92.0, start: 20.0),
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
          Align(
            alignment: Alignment(-0.082, 0.212),
            child: SizedBox(
              width: 147.0,
              height: 40.0,
              child: Component31(),
            ),
          ),
          Align(
            alignment: Alignment(-0.079, 0.203),
            child: SizedBox(
              width: 61.0,
              height: 33.0,
              child: PageLink(
                links: [
                  PageLinkInfo(
                    transition: LinkTransition.Fade,
                    ease: Curves.easeOut,
                    duration: 0.3,
                    pageBuilder: () => signup5(),
                  ),
                ],
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontFamily: 'Segoe UI',
                    fontSize: 25,
                    color: const Color(0xfff1ecec),
                  ),
                  softWrap: false,
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 123.0, middle: 0.4885),
            Pin(size: 27.0, start: 143.0),
            child: Text(
              'Student Login',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff707070),
              ),
              softWrap: false,
            ),
          ),
          Align(
            alignment: Alignment(-0.619, -0.33),
            child: SizedBox(
              width: 50.0,
              height: 27.0,
              child: Text(
                '******',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 20,
                  color: const Color(0xff707070),
                ),
                softWrap: false,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_k48st =
    '<svg viewBox="97.0 652.6 32.5 35.5" ><path transform="translate(97.0, 652.63)" d="M 32.45930480957031 17.85447311401367 C 32.45930480957031 7.992851734161377 25.19322204589844 0 16.23010444641113 0 C 7.266078948974609 0 0 7.992851734161377 0 17.85447311401367 C 0 26.76385498046875 5.935136318206787 34.14965438842773 13.69355583190918 35.48873519897461 L 13.69355583190918 23.01441764831543 L 9.573585510253906 23.01441764831543 L 9.573585510253906 17.85248756408691 L 13.69355392456055 17.85248756408691 L 13.69355392456055 13.92053699493408 C 13.69355392456055 9.445016860961914 16.11738395690918 6.974155426025391 19.82346343994141 6.974155426025391 C 21.59985733032227 6.974155426025391 23.45650482177734 7.322317600250244 23.45650482177734 7.322317600250244 L 23.45650482177734 11.71551036834717 L 21.41139984130859 11.71551036834717 C 19.39604759216309 11.71551036834717 18.76664733886719 13.09228897094727 18.76664733886719 14.50378513336182 L 18.76664733886719 17.85447311401367 L 23.26804542541504 17.85447311401367 L 22.54847145080566 23.01639747619629 L 18.76664733886719 23.01639747619629 L 18.76664733886719 35.49072265625 C 26.52506446838379 34.15163803100586 32.460205078125 26.76583671569824 32.460205078125 17.8554630279541 Z" fill="#2944f3" fill-opacity="0.89" stroke="none" stroke-width="1" stroke-opacity="0.89" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_delu3 =
    '<svg viewBox="58.5 235.5 300.0 1.0" ><path transform="translate(58.5, 235.5)" d="M 0 1 L 300 0" fill="none" stroke="#f5f5f5" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_td =
    '<svg viewBox="58.0 322.5 300.0 1.0" ><path transform="translate(58.0, 322.5)" d="M 0 1 L 300 0" fill="none" stroke="#dbe7e4" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
