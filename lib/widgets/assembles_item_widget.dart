import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_smart_education/widgets/label.dart';

class AssemblesItemWidget extends StatelessWidget {
  final Map data;

  const AssemblesItemWidget({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
        color: Colors.white,
        padding: EdgeInsets.all(2),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4),
            side: BorderSide(color: Colors.black38, width: 1),
          ),
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xfff5f5f5),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 5),
                        child: (isReaded) {
                      switch (isReaded) {
                        case 0:
                          return Icon(Icons.error_outline);
                      }
                      return Icon(Icons.check_circle_outline);
                    }(data['positive'] + data['negative'])),
                    Padding(
                      child: Text('分面:'),
                      padding: EdgeInsets.only(left: 5),
                    ),
                    Padding(
                      child: Label(
                        text: data['firstLayerFacetName'],
                        backgroundColor: Color(0xff83befd),
                      ),
                      padding: EdgeInsets.only(right: 5),
                    ),
                    Padding(
                      child: Text('数据源:'),
                      padding: EdgeInsets.only(left: 5),
                    ),
                    Padding(
                      child: Label(
                        text: data['sourceName'],
                        backgroundColor: Color(0xffb869f3),
                      ),
                      padding: EdgeInsets.only(right: 5),
                    ),

//                    Text.rich(
//                      TextSpan(
//                        children: [
//                          TextSpan(text: '分面: '),
//                          TextSpan(
//                              text: data['firstLayerFacetName'],
//                              style: TextStyle(
//                                color: Colors.white,
//                                backgroundColor: Color(0xff83befd),
//                              )),
//                          TextSpan(text: '    数据源: '),
//                          TextSpan(
//                              text: data['sourceName'],
//                              style: TextStyle(
//                                color: Colors.white,
//                                backgroundColor: Color(0xffb869f3),
//                              ))
//                        ],
//                      ),
//                      textAlign: TextAlign.left,
//                    ),
                  ],
                ),
              ),
              Padding(
                child: Html(
                  data: data['assembleContent'],
                  // overflow: TextOverflow.ellipsis,
                ),
                padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              ),
              ButtonBar(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.thumb_up),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.thumb_down),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ));
  }
}
