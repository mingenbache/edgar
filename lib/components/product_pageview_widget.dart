import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'product_pageview_model.dart';
export 'product_pageview_model.dart';

class ProductPageviewWidget extends StatefulWidget {
  const ProductPageviewWidget({
    Key? key,
    this.changePage,
  }) : super(key: key);

  final Future<dynamic> Function()? changePage;

  @override
  _ProductPageviewWidgetState createState() => _ProductPageviewWidgetState();
}

class _ProductPageviewWidgetState extends State<ProductPageviewWidget> {
  late ProductPageviewModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductPageviewModel());

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
        controller: _model.productPageViewController ??= PageController(
            initialPage: min(
                valueOrDefault<int>(
                  FFAppState().ProductPageviewIndex,
                  0,
                ),
                3)),
        scrollDirection: Axis.horizontal,
        children: [
          Image.asset(
            'assets/images/af8a02b8-c471-40fe-aa5b-4e8fd616bd0f.jpg',
            fit: BoxFit.fitHeight,
          ),
          Image.asset(
            'assets/images/Enlight57.jpg',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/59F4A410-D860-44EB-8465-76E43CC87CF3.jpg',
            fit: BoxFit.cover,
          ),
          Image.asset(
            'assets/images/Enlight171.jpg',
            width: 100.0,
            height: 100.0,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
