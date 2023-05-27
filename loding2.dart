import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'loding2_model.dart';
export 'loding2_model.dart';

class Loding2Widget extends StatefulWidget {
  const Loding2Widget({Key? key}) : super(key: key);

  @override
  _Loding2WidgetState createState() => _Loding2WidgetState();
}

class _Loding2WidgetState extends State<Loding2Widget> {
  late Loding2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Loding2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/Sunset_at_Padar_Island,_Komodo_National_Park,_Labuan_Bajo,_East_Nusa_Tenggara,_Indonesia___Windows_10_Spotlight_Images.png',
                  width: 420,
                  height: 1214,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.51, 0.64),
              child: Icon(
                Icons.account_circle_sharp,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.51, 0.76),
              child: Icon(
                Icons.lock_outline_rounded,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 30,
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, -0.33),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(
                        'assets/images/Fun__1_-removebg-preview.png',
                        width: 492,
                        height: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.06, 0.83),
                    child: FlutterFlowIconButton(
                      borderRadius: 20,
                      borderWidth: 1,
                      buttonSize: 80,
                      icon: Icon(
                        Icons.account_circle,
                        color: FlutterFlowTheme.of(context).info,
                        size: 40,
                      ),
                      onPressed: () {
                        print('IconButton pressed ...');
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
