import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './SPRK_default_preset_name_custom2.dart';
import 'package:adobe_xd/page_link.dart';
import './SPRK_default_preset_name_custom3.dart';

class SPRK_default_preset_name_custom1 extends StatelessWidget {
  SPRK_default_preset_name_custom1({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 165.0, start: -48.0),
            Pin(start: -32.0, end: -62.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffdddddd),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 165.0, start: -48.0),
            Pin(start: -32.0, end: -62.0),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xffdddddd),
                border: Border.all(width: 1.0, color: const Color(0xff707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 86.0, start: 9.0),
            Pin(size: 100.0, start: 13.0),
            child:
                // Adobe XD layer: 'Add Feed' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SPRK_default_preset_name_custom2(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 10.0, end: 10.0),
                    Pin(size: 66.0, start: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xff2196f3),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x29000000),
                            offset: Offset(0, 3),
                            blurRadius: 6,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 27.0, middle: 0.5085),
                    Pin(size: 53.0, start: 0.0),
                    child: Text(
                      '+',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 40,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 27.0, end: 0.0),
                    child: Text(
                      'Add feed ',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color: const Color(0x806d6d6d),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 90.0, start: 7.0),
            Pin(size: 88.0, middle: 0.3559),
            child:
                // Adobe XD layer: 'Edit Feeds' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SPRK_default_preset_name_custom3(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(size: 54.0, end: 0.0),
                    child: Text(
                      'Edit Feeds\n',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color: const Color(0x806d6d6d),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 38.0, middle: 0.5),
                    Pin(size: 38.0, start: 0.0),
                    child:
                        // Adobe XD layer: 'icons8-edit-link-64' (shape)
                        Container(
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
            ),
          ),
        ],
      ),
    );
  }
}
