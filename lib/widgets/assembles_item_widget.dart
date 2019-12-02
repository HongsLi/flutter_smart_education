import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';

class AssemblesItemWidget extends StatelessWidget {
  final Map data;

  const AssemblesItemWidget({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(2),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                (isReaded) {
                  switch (isReaded) {
                    case '00':
                      return Icon(Icons.check_circle_outline);
                  }
                  return Icon(Icons.error_outline);
                }(data['positive'] + data['negative']),
                Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(text: '分面: '),
                      TextSpan(
                          text: data['firstLayerFacetName'],
                          style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Color(0xff83befd),
                          )),
                      TextSpan(text: '    数据源: '),
                      TextSpan(
                          text: data['sourceName'],
                          style: TextStyle(
                            color: Colors.white,
                            backgroundColor: Color(0xffb869f3),
                          ))
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
            Card(
              borderOnForeground: true,
              child: Column(children: <Widget>[
                Html(
                  data: data['assembleContent'],
                  // overflow: TextOverflow.ellipsis,
                ),
                ButtonBar(
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.thumb_up),
                      onPressed: () {

                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.thumb_down),
                      onPressed: () {},
                    )
                  ],
                )
              ],),
            )
          ],
        ));
  }
}
