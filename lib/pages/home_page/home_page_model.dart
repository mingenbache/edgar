import '/components/menu_widget.dart';
import '/components/portfolio_view1_widget.dart';
import '/components/view_project_item_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_pdf_viewer.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:ui';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:provider/provider.dart';

class HomePageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  InstantTimer? instantTimer;
  // Model for menu component.
  late MenuModel menuModel;
  // State field(s) for MouseRegion widget.
  bool mouseRegionHovered = false;
  // State field(s) for ProductPageView widget.
  PageController? productPageViewController1;
  // State field(s) for BrandingPageView widget.
  PageController? brandingPageViewController1;
  // State field(s) for UXPageView widget.
  PageController? uXPageViewController1;
  // State field(s) for threeDPageView widget.
  PageController? threeDPageViewController1;
  // State field(s) for ProductPageView widget.
  PageController? productPageViewController2;
  // State field(s) for BrandingPageView widget.
  PageController? brandingPageViewController2;
  // State field(s) for UXPageView widget.
  PageController? uXPageViewController2;
  // State field(s) for threeDPageView widget.
  PageController? threeDPageViewController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    menuModel = createModel(context, () => MenuModel());
  }

  void dispose() {
    instantTimer?.cancel();
    menuModel.dispose();
  }

  /// Additional helper methods are added here.

}
