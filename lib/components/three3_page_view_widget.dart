import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'three3_page_view_model.dart';
export 'three3_page_view_model.dart';

class Three3PageViewWidget extends StatefulWidget {
  const Three3PageViewWidget({Key? key}) : super(key: key);

  @override
  _Three3PageViewWidgetState createState() => _Three3PageViewWidgetState();
}

class _Three3PageViewWidgetState extends State<Three3PageViewWidget> {
  late Three3PageViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Three3PageViewModel());

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
      height: 500.0,
      child: Stack(
        children: [
          PageView(
            controller: _model.threeDPageViewController ??=
                PageController(initialPage: 0),
            scrollDirection: Axis.horizontal,
            children: [
              Image.asset(
                'assets/images/top_clean.jpg',
                width: 100.0,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/stand2.png',
                width: 100.0,
                fit: BoxFit.cover,
              ),
              Image.asset(
                'assets/images/walkway_chairs_hangingplants_vases.jpg',
                width: 100.0,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Align(
            alignment: AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: smooth_page_indicator.SmoothPageIndicator(
                controller: _model.threeDPageViewController ??=
                    PageController(initialPage: 0),
                count: 3,
                axisDirection: Axis.horizontal,
                onDotClicked: (i) {
                  _model.threeDPageViewController!.animateToPage(
                    i,
                    duration: Duration(milliseconds: 500),
                    curve: Curves.ease,
                  );
                },
                effect: smooth_page_indicator.ExpandingDotsEffect(
                  expansionFactor: 2.0,
                  spacing: 8.0,
                  radius: 16.0,
                  dotWidth: 16.0,
                  dotHeight: 16.0,
                  dotColor: Color(0xFF9E9E9E),
                  activeDotColor: Color(0xFF3F51B5),
                  paintStyle: PaintingStyle.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
