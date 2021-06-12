import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:adobe_xd/blend_mask.dart';
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
            Pin(size: 722.0, end: -51.0),
            Pin(start: 5.0, end: -55.0),
            child:
                // Adobe XD layer: 'news' (unknown element)
                SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 203,
                runSpacing: 14,
                children: [{}, {}, {}, {}, {}].map((itemData) {
                  return SizedBox(
                    width: 659.0,
                    height: 96.0,
                    child:
                        // Adobe XD layer: 'news' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 102.0),
                          Pin(start: 0.0, end: 0.0),
                          child:
                              // Adobe XD layer: 'news' (shape)
                              Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0),
                              ),
                              color: const Color(0xffdddddd),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 148.0, start: 16.0),
                          Pin(size: 40.0, start: 8.0),
                          child: BlendMask(
                            blendMode: BlendMode.darken,
                            child: Text(
                              'news title',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 30,
                                color: const Color(0xd11e1d1e),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 62.0, start: 16.0),
                          Pin(size: 20.0, middle: 0.5921),
                          child: BlendMask(
                            blendMode: BlendMode.darken,
                            child: Text(
                              'Site Title',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 15,
                                color: const Color(0xff636060),
                                fontWeight: FontWeight.w700,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 101.0, start: 16.0),
                          Pin(size: 20.0, end: 11.0),
                          child:
                              // Adobe XD layer: 'Time' (text)
                              BlendMask(
                            blendMode: BlendMode.darken,
                            child: Text(
                              'Date and Time ',
                              style: TextStyle(
                                fontFamily: 'Segoe UI',
                                fontSize: 15,
                                color: const Color(0xff636060),
                                fontStyle: FontStyle.italic,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 97.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topRight: Radius.circular(15.0),
                                    ),
                                    color: const Color(0xff7a7a7a),
                                  ),
                                ),
                              ),
                              Pinned.fromPins(
                                Pin(size: 53.0, middle: 0.5),
                                Pin(size: 20.0, middle: 0.5263),
                                child: Text(
                                  'Archive',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: const Color(0xffffffff),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 64.0, middle: 0.8118),
                          Pin(size: 20.0, end: 7.0),
                          child: Stack(
                            children: <Widget>[
                              Pinned.fromPins(
                                Pin(start: 0.0, end: 0.0),
                                Pin(start: 0.0, end: 0.0),
                                child: Text(
                                  'Category',
                                  style: TextStyle(
                                    fontFamily: 'Segoe UI',
                                    fontSize: 15,
                                    color: const Color(0x6600083a),
                                    fontWeight: FontWeight.w700,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 5.0, end: 97.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xff5c5a5a),
                            ),
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
            Pin(size: 120.0, start: 0.0),
            Pin(size: 113.0, start: 0.0),
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
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff450053),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 27.0, middle: 0.4194),
                    Pin(size: 53.0, start: 13.0),
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
                    Pin(size: 86.0, end: 16.0),
                    Pin(size: 27.0, end: 13.0),
                    child: Text(
                      'Add feed ',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color: const Color(0xd1ffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, start: 0.0),
            Pin(size: 120.0, middle: 0.3604),
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
                    Pin(start: 0.0, end: 7.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff740f99),
                      ),
                    ),
                  ),
                  Pinned.fromPins(
                    Pin(size: 38.0, middle: 0.4024),
                    Pin(size: 38.0, start: 10.0),
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
                  Pinned.fromPins(
                    Pin(start: 15.0, end: 15.0),
                    Pin(size: 54.0, end: 0.0),
                    child: Text(
                      'Edit Feeds\n',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 20,
                        color: const Color(0xffffffff),
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, start: 0.0),
            Pin(size: 113.0, middle: 0.7016),
            child:
                // Adobe XD layer: 'Archives' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xff8111b3),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 74.0, middle: 0.5),
                  Pin(size: 27.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Archives' (text)
                      Text(
                    'Archives',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 120.0, start: 0.0),
            Pin(size: 113.0, end: -19.0),
            child:
                // Adobe XD layer: 'Settings' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color(0xcc8111b3),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 71.0, middle: 0.4694),
                  Pin(size: 27.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Settings' (text)
                      Text(
                    'Settings',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
