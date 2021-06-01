import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import './SPRK_default_preset_name_custom4.dart';
import 'package:adobe_xd/page_link.dart';
import './SPRK_default_preset_name_custom1.dart';

class SPRK_default_preset_name_custom3 extends StatelessWidget {
  SPRK_default_preset_name_custom3({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 17.0, end: 101.0),
            Pin(start: 42.0, end: -57.0),
            child:
                // Adobe XD layer: 'Link' (unknown element)
                SingleChildScrollView(
              child: Wrap(
                alignment: WrapAlignment.center,
                spacing: 20,
                runSpacing: 20,
                children: [{}, {}, {}, {}].map((itemData) {
                  return SizedBox(
                    width: 808.0,
                    height: 123.0,
                    child:
                        // Adobe XD layer: 'Link' (group)
                        Stack(
                      children: <Widget>[
                        Pinned.fromPins(
                          Pin(start: 0.0, end: 0.0),
                          Pin(start: 0.0, end: 0.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20.0),
                                topRight: Radius.circular(20.0),
                              ),
                              color: const Color(0xffdddddd),
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 178.0, end: 52.0),
                          Pin(size: 52.0, middle: 0.507),
                          child: PageLink(
                            links: [
                              PageLinkInfo(
                                transition: LinkTransition.Fade,
                                ease: Curves.easeOut,
                                duration: 0.3,
                                pageBuilder: () =>
                                    SPRK_default_preset_name_custom4(),
                              ),
                            ],
                            child: Stack(
                              children: <Widget>[
                                Pinned.fromPins(
                                  Pin(start: 0.0, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20.0),
                                      color: const Color(0xff2196f3),
                                    ),
                                  ),
                                ),
                                Pinned.fromPins(
                                  Pin(size: 43.0, middle: 0.5037),
                                  Pin(size: 27.0, middle: 0.52),
                                  child: Text(
                                    'EDIT',
                                    style: TextStyle(
                                      fontFamily: 'Segoe UI',
                                      fontSize: 20,
                                      color: const Color(0xffffffff),
                                      fontWeight: FontWeight.w700,
                                      shadows: [
                                        Shadow(
                                          color: const Color(0x29000000),
                                          offset: Offset(0, 3),
                                          blurRadius: 6,
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 86.0, start: 50.0),
                          Pin(size: 27.0, middle: 0.2396),
                          child: Text(
                            'Link Title',
                            style: TextStyle(
                              fontFamily: 'Segoe UI',
                              fontSize: 20,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w700,
                              shadows: [
                                Shadow(
                                  color: const Color(0x29000000),
                                  offset: Offset(0, 3),
                                  blurRadius: 6,
                                )
                              ],
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Pinned.fromPins(
                          Pin(size: 446.0, start: 50.0),
                          Pin(size: 27.0, middle: 0.6458),
                          child: Text(
                            'LINK description LINK description LINK description',
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
                  );
                }).toList(),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 60.0, end: 31.0),
            Pin(size: 60.0, end: 18.0),
            child:
                // Adobe XD layer: 'icons8-return-96' (shape)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => SPRK_default_preset_name_custom1(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage(''),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
