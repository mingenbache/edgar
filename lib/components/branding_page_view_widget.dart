import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'branding_page_view_model.dart';
export 'branding_page_view_model.dart';

class BrandingPageViewWidget extends StatefulWidget {
  const BrandingPageViewWidget({Key? key}) : super(key: key);

  @override
  _BrandingPageViewWidgetState createState() => _BrandingPageViewWidgetState();
}

class _BrandingPageViewWidgetState extends State<BrandingPageViewWidget> {
  late BrandingPageViewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BrandingPageViewModel());

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
        controller: _model.brandingPageViewController ??= PageController(
            initialPage: min(
                valueOrDefault<int>(
                  FFAppState().brandingPageViewIndex,
                  0,
                ),
                3)),
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(
            'assets/images/Comp_1_1_1.gif',
            fit: BoxFit.fitHeight,
          ),
          Image.asset(
            'assets/images/mf1.png',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/BCards.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/Enlight57.jpg',
            width: 100.0,
            height: MediaQuery.of(context).size.height * 1.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
