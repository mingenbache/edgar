import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'u_x_page_view_model.dart';
export 'u_x_page_view_model.dart';

class UXPageViewWidget extends StatefulWidget {
  const UXPageViewWidget({Key? key}) : super(key: key);

  @override
  _UXPageViewWidgetState createState() => _UXPageViewWidgetState();
}

class _UXPageViewWidgetState extends State<UXPageViewWidget> {
  late UXPageViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UXPageViewModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: _model.uXPageViewController ??= PageController(
            initialPage: min(
                valueOrDefault<int>(
                  FFAppState().UXPageviewIndex,
                  0,
                ),
                3)),
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(
            'assets/images/Pico2.png',
            fit: BoxFit.fitHeight,
          ),
          Image.asset(
            'assets/images/mrfixitweb.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/wsite2.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/Badili.png',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
