import 'package:flutter_web/material.dart';
import 'package:resume/utils/default-colors.dart';
import 'package:tuple/tuple.dart';

import 'dart:js' as js;

class ButtonList extends StatelessWidget {
  ButtonList(this.value);

  List value;

//   @override
//   State<StatefulWidget> createState() => ButtonListState(value);
// }

// class ButtonListState extends State<ButtonList> {
//   ButtonListState(this.value);

//   List<Tuple2<IconData, String>> value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: value.map((hash) {
        return Container(
          margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
          width: 40.0, 
          height: 40.0,
          child: InkWell(
            borderRadius: BorderRadius.circular(20),
            // onHover: (hover) {  setState(() { _iconHoverState[id] = hover; }); },
            onHover: (hover) { },
            onTap: () {},
            child: RaisedButton(
              elevation: 0,
              // color: (_iconHoverState[id] ? bgcolor : WebColors.lightPrimary),
              color: WebColors.lightPrimary,
              onPressed: () { js.context.callMethod("open", [hash.item2]); },
              padding: EdgeInsets.all(0.0),
              child: IconButton(
                onPressed: null,
                icon: Icon(hash.item1, color: WebColors.light),
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
          ),
        );
      }).toList()
    );
  }
}